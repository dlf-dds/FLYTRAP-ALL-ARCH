# ARCH DIAGRAM DEV README

_Architecture diagrams for **Joint EX FLYTRAP / VANAHEIM**_


## Prerequisites

- [Docker](https://docs.docker.com/)  
  Runs the Draw.io CLI without installing the desktop app
- Git ≥ 2.9  
  Needed for `core.hooksPath`
- Node + npm *(optional)*  
  Alternative CLI for Windows devs without Docker Desktop


## First-time setup

Pull the Draw.io CLI container (or use the Node CLI if you don’t run Docker):

```sh
# Pull the Docker CLI (recommended)
docker pull rlespinasse/drawio-export

# ── or, install the Node CLI ──
npm install -g @drawio/cli 
```

Place this Makefile in every directory that contains *.drawio files, so that the diagrams can be rendered to png.

```makefile
# Makefile (drop one in every dir with *.drawio)

# Default: Docker-based CLI
DRAWIO ?= drawio --export --format png --output "$@" "$<"
# Override at the command line to use the Node CLI:
#   DRAWIO=drawio make

SRC  := $(wildcard *.drawio)
PNGS := $(SRC:.drawio=.png)

all: $(PNGS)

%.png: %.drawio
	@echo "Exporting $< → $@"
	@$(DRAWIO) --export --format png --no-sandbox --embed-diagram=false \
	           --output "$@" "$<"

.PHONY: all clean
clean:
	rm -f $(PNGS)

```

### Git Settings
Place this in `.gitattributes` to ensure proper handling of the `.drawio` files and their binary exports:

```gitattributes
# Use XML diff for source diagrams (default)
*.drawio diff=xml
# To enable a custom diff driver instead, comment the line above and uncomment:
# *.drawio diff=drawio

# Exported images are binary
*.png binary

```


### Git hooks

```sh
# Activate repo-local hooks
git config core.hooksPath .githooks

# Ensure the pre-commit script is executable
chmod +x .githooks/pre-commit
```

The `pre-commit` hook re-exports any staged `.drawio` files to matching `.pngs` and re-adds them to the commit.

### CI safety net

> **Tip:** Our GitHub Actions workflow re-exports every diagram and fails the build if a pushed `.png` is out of date. Run `make` (or rely on the pre-commit hook) before committing to keep your PR green.

See `.github/workflows/diagrams.yml` for the exact CI check.






# CI test
