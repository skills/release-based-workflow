#!/usr/bin/env bash
# Make sure this file is executable
# chmod a+x .github/script/create-hotfix-pr.sh

echo "Set committer details"
git config user.name github-actions[bot]
git config user.email github-actions[bot]@users.noreply.github.com

echo "Create hotfix branch"
RELEASE_BRANCH=hotfix-v1.0.1
git checkout main
git pull origin main
git checkout -b $RELEASE_BRANCH

echo "Push release branch"
git commit --allow-empty --message="Empty commit to initialize branch"
git push --set-upstream origin $RELEASE_BRANCH

echo "Create feature branch"
git checkout main
FEATURE_BRANCH=fix-game-background
git checkout -b $FEATURE_BRANCH

echo "Make changes to files"
cp .github/changes/game-fixed.js game.js

echo "Commit file changes"
git add game.js
git commit -m "Set game background back to black"

echo "Push feature branch"
git push --set-upstream origin $FEATURE_BRANCH

echo "Restore main"
git checkout main