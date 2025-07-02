# root-level Makefile  ─ single source of truth

DRAWIO ?= docker run --rm \
         -v "$$(pwd)":/workspace \
         -w /workspace \
         rlespinasse/drawio-export

DRAWIOS := $(shell git ls-files '*.drawio')
PNGS    := $(DRAWIOS:.drawio=.png)

all: $(PNGS)

# -------------------------------------------------------
# $< = path/to/foo.drawio
# $@ = path/to/foo.png
%.png: %.drawio
	@echo "Exporting $< → $@"
	@DIR=$$(dirname "$@"); BASEN=$$(basename "$@" .png); \
	  $(DRAWIO) -f png -o "$$DIR" "$<" && { \
	    test -f "$$DIR/$$BASEN-Page-1.png" && mv "$$DIR/$$BASEN-Page-1.png" "$@" || \
	    mv "$$DIR/$$BASEN.png" "$@"; \
	  }
# -------------------------------------------------------
