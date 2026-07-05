REM Docker image: https://hub.docker.com/r/asciidoctor/docker-asciidoctor
REM Docker image repository: https://github.com/asciidoctor/docker-asciidoctor

@echo off
SET LANG_ARG=es
IF "%~1"=="en" SET LANG_ARG=en

SET BOOK_SOURCE_DIR=book/%LANG_ARG%

IF "%LANG_ARG%"=="es" (
    SET OUTPUT_FILE=build/vsm-fuentemilanos.epub
) ELSE (
    SET OUTPUT_FILE=build/vsm-fuentemilanos_en.epub
)

IF NOT EXIST build mkdir build

docker run --rm -v "%CD%":/documents/ asciidoctor/docker-asciidoctor:1.63 asciidoctor-epub3 -o %OUTPUT_FILE% %BOOK_SOURCE_DIR%/index.adoc