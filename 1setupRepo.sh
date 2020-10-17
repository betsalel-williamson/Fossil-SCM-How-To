#!/usr/bin/env sh

# add some data to trunk
USER=LeadDeveloper
mkdir -p src
echo "foo\n">src/file1.txt
fossil add src/file1.txt
MSG="User ($USER) added file1.txt to trunk"
fossil status
fossil commit -m "$MSG"
fossil status

fossil ui example.fossil
