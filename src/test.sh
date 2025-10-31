#!bin/bash
EXPECTED="Hello, Alice!"
OUTPUT=$(node -e "console.log(require('./src/App.js').default('Alice'))")
echo $OUTPUT
echo $EXPECTED
if [ "$OUTPUT" == "$EXPECTED" ]; then
   SORTIE="true"
else
   SORTIE="false"
fi
echo $SORTIE
if [ "$OUTPUT" == "$EXPECTED" ]; then
    echo "Test passed!"
    exit 0
else
    echo "Test failed! Expected '$EXPECTED' but got '$OUTPUT'"
    exit 1
fi