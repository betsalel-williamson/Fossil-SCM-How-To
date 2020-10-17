#!/usr/bin/env sh

# now we have content we are going to create features
# feature one adds file2.txt
USER=FeatureDeveloperAlpha
TIMESTAMP="2020 10 17 910EST"
MSG="Add file2"
echo "User($USER)"
fossil status

# example using the --user command, note that this isn't necessary here
# because we set the env USER variable already to 'FeatureDeveloperAlpha'

fossil commit --branch "F-$MSG $TIMESTAMP" --tag "Feature; $MSG $TIMESTAMP" --user $USER -m "Creating branch with User($USER)" --allow-empty
fossil branch current
echo "Branch shoule be 'F-$MSG $TIMESTAMP'"

echo "Adding file2."
echo "foo\n" > src/file2.txt
fossil add src/file2.txt

MSG="Added file2."

fossil commit -m "$MSG"

fossil checkout trunk
fossil branch current
echo "there should not be any file2.txt now"

echo "\nResults from ls:"
ls src
echo "\n\n"

echo "Review timeline for results..."
fossil ui example.fossil
