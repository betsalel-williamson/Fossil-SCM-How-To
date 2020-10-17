#!/usr/bin/env sh

# feature two edits file1.txt to read "bar"
USER=FeatureDeveloperBravo
TIMESTAMP="2020 10 17 911EST"
MSG="Modify file1"
echo "User($USER)"
fossil status

fossil commit --branch "F-$MSG $TIMESTAMP" --tag "Feature; $MSG $TIMESTAMP" -m "Creating branch with User($USER)" --allow-empty
# note that we can't use the commit --branch command twice.
# once the branch is created we must switch to it with fossil checkout $BRANCH

fossil branch current

echo "Before change:"
cat src/file1.txt

echo "bar\n">src/file1.txt
echo "After change:"
cat src/file1.txt

MSG="Modified file1 to read 'bar'."
fossil commit -m "$MSG"

fossil checkout trunk
fossil branch current
cat src/file1.txt

echo "\nResults from ls:"
ls src
echo "\n\n"

echo "There should not be any file2.txt"
echo "file1.txt should still read 'foo'"

echo "Review timeline for results..."
fossil ui example.fossil
