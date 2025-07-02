# Makefile ─ exports exactly the PNGs you ask for, using the Docker CLI

DRAWIO ?= docker run --rm \
         -v "$$(pwd)":/workspace \
         -w /workspace \
         rlespinasse/drawio-export

DRAWIOS := $(shell git ls-files '*.drawio')
PNGS    := $(DRAWIOS:.drawio=.png)

all: $(PNGS)

# Pattern rule: given  path/to/foo.png
#   $<  = path/to/foo.drawio
#   $@  = path/to/foo.png
%.png: %.drawio
	@echo "Exporting $< → $@"
	@DIR=$$(dirname "$@"); SRC=$$(basename "$<"); \
	  $(DRAWIO) -f png -o "$$DIR" "$<" && \
	  mv "$$DIR/$$SRC.png" "$@"
