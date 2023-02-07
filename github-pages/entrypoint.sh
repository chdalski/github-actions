#!/bin/bash
set -euo pipefail

# set internal field separator
IFS=$'\n'

deploy_dir="${GITHUB_WORKSPACE}/${INPUT_DEPLOY_DIR}"
github_token="${INPUT_GITHUB_TOKEN}"

# Ensure jekyll is disabled for GitHub pages - https://jekyllrb.com/
if [ ! -f "${deploy_dir}/.nojekyll" ]; then
    touch "${deploy_dir}/.nojekyll"
fi

# Push the website to GitHub pages
cd "${deploy_dir}"

# Remove Git directory
rm -rf .git

git config --global --add safe.directory "$(pwd)"
git config --global init.defaultBranch main
git init
git config user.name "Deploy via CI"
git config user.email ""
git add .
git commit -m "Deploy ${GITHUB_SHA} to gh-pages"
git push -f "https://x-token:${github_token}@github.com/${GITHUB_REPOSITORY}" main:gh-pages