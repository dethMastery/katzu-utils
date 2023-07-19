#/bin/sh

FILE=".gitignore"

touch $FILE

echo "/.vscode" >> $FILE
echo "/node_modules" >> $FILE
echo ".DS_Store" >> $FILE