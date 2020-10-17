#!/usr/bin/env sh

# create release from test branch
USER=QAReleaseManager
VERSION="1.0"
fossil commit --branch "R-$VERSION" --tag "Release; $VERSION" -m "Creating branch with User($USER)" --allow-empty
fossil branch current

# run tests, the test runner will handle this part...
# save test report for QA purposes
echo "some release report">reports/some-release-report.txt
fossil add reports/some-release-report.txt
# update latest stable version information
echo "$VERSION signed off by $USER.">stable-version.txt
fossil add stable-version.txt

echo "\nResults from ls:"
ls reports
ls
echo "\n\n"

# if all tests pass then
MSG="$USER verified that release $VERSION passes all tests."
fossil commit -m "$MSG"

echo "Review timeline for results..."
fossil ui example.fossil
