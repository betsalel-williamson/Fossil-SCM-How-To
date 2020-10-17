#!/usr/bin/env sh

# merge release back to trunk
fossil checkout trunk
fossil branch current

USER=LeadDeveloper
VERSION="1.0"
fossil merge --keep-merge-files --integrate "R-$VERSION"
MSG="Merged release version $VERSION."
fossil commit -m "$MSG"
fossil status

echo "Review timeline for results..."
fossil ui example.fossil
