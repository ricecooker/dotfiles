# Dotfiles
Storing my defaults, aliases, etc here.

## Getting started
1. Clone it to `~`, ex: `git@github.com:ricecooker/dotfiles.git`
1. Run `./dotfiles/setup.sh` to setup on a new machine.
 * It doesn't overwrite existing files so you might need to remove
  * .bashrc
  * .bash_profile
1. Launch a new shell
 * You should see output like:
 ```
Last login: Thu Oct 29 11:05:54 on ttys002
Sourcing...
  # bash/zsh completion support for core Git. (/Users/dcheng/.bash/scripts.d/10-git-completion.sh)...[done]
  # Aliases (/Users/dcheng/.bash/scripts.d/20-aliases.sh)...[done]
  # Generic environment settings (/Users/dcheng/.bash/scripts.d/20-cli.sh)...[done]
  # Sets up java environment (/Users/dcheng/.bash/scripts.d/30-java.sh)...[done]
  # Postgres.app path (/Users/dcheng/.bash/scripts.d/30-postgres.app.sh)...[done]
  # rbenv (/Users/dcheng/.bash/scripts.d/30-rbenv.sh)...[done]
  # Lifebooker stuff (/Users/dcheng/.bash/scripts.d/90-lifebooker.sh)...[done]
  # Pushover (/Users/dcheng/.bash/scripts.d/90-pushover.sh)...[done]
dcheng@dcheng.local:~$
 ```


