#!/bin/sh
echo "Executing run.sh"
find -name *.war -exec java -jar {} \;