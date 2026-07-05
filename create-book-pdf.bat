REM Docker image: https://hub.docker.com/r/asciidoctor/docker-asciidoctor
REM Docker image repository: https://github.com/asciidoctor/docker-asciidoctor
@echo off
REM Default settings
SET LANG_ARG=es

IF "%~1"=="es" (
    SET LANG_ARG=es
) ELSE IF "%~1"=="en" (
    SET LANG_ARG=en
)

SET BOOK_SOURCE_DIR=book/%LANG_ARG%
SET SHARED_RESOURCES_DIR=book

IF "%LANG_ARG%"=="es" (
    SET OUTPUT_FILE=build/vsm-fuentemilanos.pdf
) ELSE (
    SET OUTPUT_FILE=build/vsm-fuentemilanos_en.pdf
)

IF NOT EXIST build mkdir build

docker run --rm -v "%CD%":/documents/ asciidoctor/docker-asciidoctor asciidoctor-pdf -o %OUTPUT_FILE% -a pdf-themesdir=%SHARED_RESOURCES_DIR%/themes -a pdf-theme=basic -a pdf-fontsdir=%SHARED_RESOURCES_DIR%/fonts -a compress %BOOK_SOURCE_DIR%/index.adoc