#!/usr/bin/env sh

# we then create a test branch
USER=QATestDeveloper
TIMESTAMP="2020 10 17 916EST"
# List out the features that will be tested
FEATURE1="add file2"
FEATURE2="modify file1"
MSG="$FEATURE1, $FEATURE2"
fossil status
fossil commit --branch "T-$MSG $TIMESTAMP" --tag "Test; $MSG $TIMESTAMP" -m "Creating branch with User($USER)" --allow-empty
fossil branch current

mkdir -p tests
# verify that file1 exists
# add test file to do this

# verify that file1 reads bar
# add test file to do this

# verify that file2 exists
# add test file to do this

# verify that file2 reads foo
# add test file to do this
echo "tests">tests/tests.sh
fossil add tests/tests.sh

# run tests, the test runner will handle this part...

mkdir -p reports

# save test reports for QA purposes
echo "some test report">reports/some-test-report.txt
fossil add reports/some-test-report.txt

echo "\nResults from ls:"
ls tests
ls reports
echo "\n\n"

fossil status
MSG="Added tests; verify that features work as intended"
fossil commit -m "$MSG"
fossil status

echo "Review timeline for results..."
fossil ui example.fossil
