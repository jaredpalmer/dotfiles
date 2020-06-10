# dotfiles

My dotfiles.

## Installation

```sh
cd ~
git clone https://github.com/jaredpalmer/dotfiles.git && cd dotfiles && ./sync.sh
```

To update later on, _after you push to github_, just run the `./sync.sh` script again.

> Note: `.extra` file is not committed for security

## Bash Prompt

My bash prompt configuration is in `.bash_prompt`. It shows the current directory and branch name, and looks like this:

<img width="400" alt="screenshot 2018-12-28 15 47 58" src="https://user-images.githubusercontent.com/4060187/50527696-f78cbf00-0ab7-11e9-9a91-02759d255674.png">

## Related

Most of this is ripped from the following other dotfiles:

- https://github.com/addyosmani/dotfiles
- https://github.com/jessfraz/dotfiles

## Brew Stuff

```bash
# Essentials
brew install git

# DB
brew install mongodb
brew install mysql
brew install neo4j
brew install postgresql
brew install rabbitmq
brew install redis
brew install sqlite

# JVM
brew install jenv
brew install maven
brew install gradle
brew install ktlint

# Fish/CLI
brew install jq
brew install z
brew install fish
brew install fzf
brew install grc

# PHP
brew install composer
brew install php@5.6

# Ops
brew install awscli
brew install heroku
brew install ansible

# misc
brew install imagemagick
brew install optipng
```
