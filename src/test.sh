#!bin/bash
EXPECTED="Hello, Alice!"
OUTPUT=$(node -e "console.log(require('./src/app').default('Alice'))")
if [ "$OUTPUT" == "$EXPECTED" ]; then
    echo "Test passed!"
    exit 0
else
    echo "Test failed! Expected '$EXPECTED' but got '$OUTPUT'"
    exit 1
fi