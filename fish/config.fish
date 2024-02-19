# WHEN THIS FILE IS UPDATED: 
# RUN doom env ON THE COMMAND LINE TO GENERATE A SNAPSHOT OF SHELL ENVIRONMENT FOR DOOM
# This will include PATH.


if status is-interactive
    # Commands to run in interactive sessions can go here
end


# SET EDITOR TO EMACS
set -gx EDITOR emacs

# GOLANG
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
# set -x PATH $PATH $GOPATH
# set -x PATH $PATH $GOROOT/bin
# set -x PATH $PATH $GOPATH/bin

# set -gx GONOPROXY github.com/rewardStyle
# set -gx GONOSUMDB github.com/rewardStyle


# NVM
function nvm
   bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
set -x NVM_DIR ~/.nvm
nvm use default --silent


# STARSHIP
starship init fish | source
