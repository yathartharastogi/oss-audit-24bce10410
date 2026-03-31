#!/bin/bash
echo "Answer three questions to generate your manifesto."
echo ""
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"
echo "Open source for me means $FREEDOM." > $OUTPUT
echo "Using tools like $TOOL helps developers grow." >> $OUTPUT
echo "I want to build $BUILD and share it openly." >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT