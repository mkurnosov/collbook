#!/usr/bin/env bash

cd "$(dirname "$0")/.."
rm -rf build/html && mkdir -p build/html
cp -r figures build/html/figures
cp -r chapters *.adoc build/html/

asciidoctor -a stem=latexmath -a mathjax -a source-highlighter=highlight.js -o build/html/index.html \
            build/html/chapters/book.adoc 
