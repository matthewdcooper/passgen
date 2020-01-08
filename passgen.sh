#!/bin/bash

DICTFILE="/usr/share/dict/british-english"

words=$(shuf $DICTFILE | head -4 | while read word; do
	echo $word | cut -d "'" -f1
done)

echo $words | tr '[:upper:]' '[:lower:]'

