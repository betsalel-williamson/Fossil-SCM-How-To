#!/usr/bin/env sh

USER=setupUser
# create the repository
fossil init example.fossil
fossil open example.fossil trunk
fossil status
fossil branch current
echo "The default fossil branch is trunk!"

# add users using fossil UI
echo "Go to UI and edit the users to have the following permissions"

DEV_PERMISSIONS=v
ADMIN_PERMISSIONS=a

USER=FeatureDeveloperAlpha
fossil user new $USER $USER@example.com $USER
fossil user capabilities $USER $DEV_PERMISSIONS
USER=FeatureDeveloperBravo
fossil user new $USER $USER@example.com $USER
fossil user capabilities $USER $DEV_PERMISSIONS
USER=QATestDeveloper
fossil user new $USER $USER@example.com $USER
fossil user capabilities $USER $DEV_PERMISSIONS
USER=QAReleaseManager
fossil user new $USER $USER@example.com $USER
fossil user capabilities $USER $ADMIN_PERMISSIONS
USER=LeadDeveloper
fossil user new $USER $USER@example.com $USER
fossil user capabilities $USER $ADMIN_PERMISSIONS

echo "Verify users and permissions..."
fossil ui example.fossil
