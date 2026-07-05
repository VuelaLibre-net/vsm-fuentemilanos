#!/usr/bin/env sh
# Docker image: https://hub.docker.com/r/asciidoctor/docker-asciidoctor
# Docker image repository: https://github.com/asciidoctor/docker-asciidoctor

# Default values
LANG_ARG="es"

if [ "$#" -ge 1 ]; then
    if [ "$1" = "es" ] || [ "$1" = "en" ]; then
        LANG_ARG="$1"
    else
        echo "Usage: $0 [es|en]"
        exit 1
    fi
fi

BOOK_SOURCE_DIR="book/${LANG_ARG}"
SHARED_RESOURCES_DIR="book"

if [ "${LANG_ARG}" = "es" ]; then
    OUTPUT_FILE="build/vsm-fuentemilanos.pdf"
else
    OUTPUT_FILE="build/vsm-fuentemilanos_en.pdf"
fi

# Ensure build directory exists
mkdir -p build

docker run --rm -v $(pwd):/documents/ asciidoctor/docker-asciidoctor \
    asciidoctor-pdf \
    -o "$OUTPUT_FILE" \
     -a pdf-themesdir="$SHARED_RESOURCES_DIR/themes" \
     -a pdf-theme=basic \
     -a pdf-fontsdir="$SHARED_RESOURCES_DIR/fonts" \
     -a compress \
    "$BOOK_SOURCE_DIR/index.adoc"
