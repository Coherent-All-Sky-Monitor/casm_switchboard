#!/bin/sh

# Prompt for user details
echo "Git Signed Commit Helper (for shared working directories)"
read -p "Name: " NAME
read -p "Email: " EMAIL
#read -p "GPG Key ID (e.g. 0123ABCD): " KEY

# Read commit message (as argument or prompt)
if [ -n "$1" ]; then
    COMMIT_MSG="$*"
else
    echo "Enter commit message: "
    read COMMIT_MSG
fi

# Stage all changes, or prompt user for manual staging
echo "Staging all changed files..."
git add -A

# Run the signed commit
#git -c user.name="$NAME" -c user.email="$EMAIL" -c user.signingkey="$KEY" commit -S -m "$COMMIT_MSG"
git -c user.name="$NAME" -c user.email="$EMAIL" commit -m "$COMMIT_MSG"

# Show the commit that was just made
LAST=$(git rev-parse HEAD)
echo
echo "Commit $LAST by $NAME <$EMAIL> signed with key $KEY."
git show --stat $LAST
