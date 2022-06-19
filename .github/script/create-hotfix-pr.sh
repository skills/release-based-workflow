#!/usr/bin/env bash
# Make sure this file is executable
# chmod a+x .github/script/create-hotfix-pr.sh

echo "Set committer details"
git config user.name github-actions
git config user.email github-actions@github.com

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

echo "Create PR to hotfix release branch and merge"
gh pr create --base $RELEASE_BRANCH --head $FEATURE_BRANCH --title "Hotfix for broken game style" --body "Fixed bug, set game background back to black"
gh pr merge --squash $FEATURE_BRANCH

echo "Create PR for hotfix to main"
gh pr create --base main --head $RELEASE_BRANCH --title "Hotfix v1.0.1" --body "Fixed bug introduced in last production release - set game background back to black."

echo "Restore main"
git checkout main