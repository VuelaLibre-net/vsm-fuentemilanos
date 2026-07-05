#!/usr/bin/env sh
# Docker image: https://hub.docker.com/r/asciidoctor/docker-asciidoctor
# Docker image repository: https://github.com/asciidoctor/docker-asciidoctor

# Default language
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

if [ "${LANG_ARG}" = "es" ]; then
    OUTPUT_FILE="build/vsm-fuentemilanos.epub"
else
    OUTPUT_FILE="build/vsm-fuentemilanos_en.epub"
fi

# Ensure build directory exists
mkdir -p build

docker run --rm -v $(pwd):/documents/ asciidoctor/docker-asciidoctor:1.63 asciidoctor-epub3 \
    -o "$OUTPUT_FILE" \
    "$BOOK_SOURCE_DIR/index.adoc"
