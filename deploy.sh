#!/bin/bash

# Exit immediately on error
set -e

# Define variables
BUILD_DIR="_site"
DEPLOY_BRANCH="gh-pages"
COMMIT_MSG="Deploying site on $(date)"

echo "🔨 Building the Jekyll site..."
bundle exec jekyll build

echo "🚚 Deploying to $DEPLOY_BRANCH branch..."

# Create a temp deployment directory
TEMP_DIR=$(mktemp -d)

# Copy the generated site to temp dir
cp -R $BUILD_DIR/* "$TEMP_DIR"

# Go to temp dir and init new git repo
cd "$TEMP_DIR"
git init
git remote add origin git@github.com:doublefreein/doublefreein.github.io.git
git checkout -b $DEPLOY_BRANCH

git add .
git commit -m "$COMMIT_MSG"
git push --force origin $DEPLOY_BRANCH

echo "✅ Deployed to https://doublefreein.github.io/"
