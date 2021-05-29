# [CJ](https://www.github.com/cjdunteman)'s dotfiles

[![Ubuntu](https://github.com/cjdunteman/dotfiles/actions/workflows/ubuntu.yml/badge.svg)](https://github.com/cjdunteman/dotfiles/actions/workflows/ubuntu.yml)
[![macOS](https://github.com/cjdunteman/dotfiles/actions/workflows/macos.yml/badge.svg)](https://github.com/cjdunteman/dotfiles/actions/workflows/macos.yml)
[![Twitter](https://img.shields.io/twitter/url/https/twitter.com/NocoDB.svg?style=social&label=Follow%20Me!)](https://twitter.com/cjdunteman)

These are my dotfiles for Ubuntu and MacOS.

## Install

Ubuntu:

`bash -c "$(wget -qO - https://raw.github.com/cjdunteman/dotfiles/install.sh)`

macOS:

`bash -c "$(curl -LsS https://raw.github.com/cjdunteman/dotfiles/install.sh)"`

#### Git

Set git email and username

`git config --global user.email "email@example.com"`

`git config --global user.name "username"`

#### GitHub

Connect to GitHub with SSH following [these instructions](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh).

Manage commit signature following [these instructions](https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification).

Sign all commits by default

`git config --global commit.gpgsign true`

## Acknowledgements

Thanks to these resources for inspiration:

* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)' dotfiles
* [Cătălin](https://github.com/alrra/dotfiles)'s dotfiles