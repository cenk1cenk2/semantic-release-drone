#!/bin/sh

export GIT_AUTHOR_NAME=$PLUGIN_USER_NAME
export GIT_AUTHOR_EMAIL=$PLUGIN_USER_EMAIL
export GIT_COMMITTER_NAME=$PLUGIN_USER_NAME
export GIT_COMMITTER_EMAIL=$PLUGIN_USER_EMAIL

export GH_TOKEN=$PLUGIN_GITHUB_TOKEN
export GL_TOKEN=$PLUGIN_GITLAB_TOKEN
export BB_TOKEN=$PLUGIN_BITBUCKET_TOKEN
export GIT_CREDENTIALS=$(node /semantic-release/create-credentials.js)

cp /semantic-release/.releaserc .releaserc

semantic-release
