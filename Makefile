# root-level Makefile – works for any depth, single or multi-page diagrams

DRAWIO_IMAGE = rlespinasse/drawio-export
# We’ll launch the container with "-v $(PWD):/workspace"
# and then "-w /workspace/<diagram-dir>" for each file.

# list changed *.drawio that still exist in HEAD
DRAWIOS=$(git diff --name-only --diff-filter=AM "$BASE" HEAD -- '*.drawio')

PNGS    := $(DRAWIOS:.drawio=.png)

all: $(PNGS)

# target $@  : diagrams/foo.png
# source $<  : diagrams/foo.drawio
%.png: %.drawio
	@SRC='$<';           \
	  DIR=$$(dirname "$$SRC");                    \
	  NAME=$$(basename "$$SRC" .drawio);          \
	  echo "Exporting $$SRC → $@";                \
	  docker run --rm                             \
	    -v "$(PWD)":/workspace                    \
	    -w "/workspace/$$DIR"                     \
	    $(DRAWIO_IMAGE)                           \
	    -f png -o . "$$NAME.drawio" &&            \
	  (                                           \
	    mv "$$DIR/$$NAME-Page-1.png" "$@" 2>/dev/null || \
	    mv "$$DIR/$$NAME.png"        "$@" 2>/dev/null     \
	  )
