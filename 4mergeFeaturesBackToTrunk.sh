#!/usr/bin/env sh

# next we merge the change back to trunk
fossil checkout trunk

USER=LeadDeveloper
TIMESTAMP="2020 10 17 910EST"
MSG="Add file2"
fossil merge --keep-merge-files --integrate "F-$MSG $TIMESTAMP"
MSG="merged feature Add file2"
fossil commit -m "$MSG"

TIMESTAMP="2020 10 17 911EST"
MSG="Modify file1"
fossil merge --keep-merge-files --integrate "F-$MSG $TIMESTAMP"
MSG="merged feature Modify file1"
fossil commit -m "$MSG"

echo "Review timeline for results..."
fossil ui example.fossil
