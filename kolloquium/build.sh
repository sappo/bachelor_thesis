#!/bin/bash

asciidoctor -T ../../Workspace/asciidoctor/asciidoctor-backends/slim/revealjs/ kolloquium.adoc

asciidoctor -T ../../asciidoctor/asciidoctor-backends/slim/revealjs/ kolloquium.adoc
