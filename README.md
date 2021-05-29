![main](https://github.com/cjdunteman/dotfiles/workflows/main/badge.svg)

# Dotfiles

These are my dotfiles for Ubuntu and MacOS.

## Install

Ubuntu:

`bash -c "$(wget https://raw.githubusercontent.com/cjdunteman/dotfiles/master/ubuntu/install.sh)`

#### Git

Set git email and username

`git config --global user.email "email@example.com"`

`git config --global user.name "username"`

#### GitHub

Connect to GitHub with SSH following [these instructions](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh).

Manage commit signature following [these instructions](https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification).

Sign all commits by default

`git config --global commit.gpgsign true`
