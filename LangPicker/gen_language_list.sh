#!/bin/bash

cat RosettaCodeLanguageComparisonTable2015.txt | sed -nr 's/<th> <span id="(.+)".*/\1/p' | sed -nr 's/^([^"]+)">.*/\1/p' > list_languages.txt
