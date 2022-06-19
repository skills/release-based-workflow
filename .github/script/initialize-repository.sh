#!/usr/bin/env bash
# Make sure this file is executable
# chmod a+x .github/script/initialize-repository.sh

echo "Set committer details"
git config user.name github-actions
git config user.email github-actions@github.com

echo "Create release branch"
RELEASE_BRANCH=release-v1.0
git checkout main
git checkout -b $RELEASE_BRANCH

echo "Push release branch"
git commit --allow-empty --message="Empty commit to initialize branch"
git push --set-upstream origin $RELEASE_BRANCH

echo "Create feature branch"
git checkout main
FEATURE_BRANCH=update-text-colors
git checkout -b $FEATURE_BRANCH

echo "Make changes to files"
cp .github/changes/engine.js engine.js
cp .github/changes/game-with-bug.js game.js

echo "Commit file changes"
git add engine.js game.js
git commit -m "Changed game text colors to green"

echo "Push feature branch"
git push --set-upstream origin $FEATURE_BRANCH

echo "Create PR to release branch and merge"
gh pr create --base $RELEASE_BRANCH --head $FEATURE_BRANCH --title "Updated game text style" --body "Updated game text color to green"
gh pr merge --squash update-text-colors

echo "Restore main"
git checkout main