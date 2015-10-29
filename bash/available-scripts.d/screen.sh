#!/bin/bash
#
# Helps screen share ssh-agents
#
# Must have the following in .screenrc:
#
# unsetenv SSH_AUTH_SOCK
# setenv SSH_AUTH_SOCK $HOME/.screen/ssh-auth-sock.$HOSTNAME

_ssh_auth_save() {
    ln -sf "$SSH_AUTH_SOCK" "$HOME/.screen/ssh-auth-sock.$HOSTNAME"
}
alias screen='_ssh_auth_save ; export HOSTNAME=$(hostname) ; screen'
