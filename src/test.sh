#!bin/bash
EXPECTED="Hello, Alice!"
OUTPUT=$(node -e "console.log(require('./src/App.js').default('Alice'))")
echo $OUTPUT
echo $EXPECTED
SORTIE=$OUTPUT == $EXPECTED
echo $SORTIE
if [ "$OUTPUT" == "$EXPECTED" ]; then
    echo "Test passed!"
    exit 0
else
    echo "Test failed! Expected '$EXPECTED' but got '$OUTPUT'"
    exit 1
fi