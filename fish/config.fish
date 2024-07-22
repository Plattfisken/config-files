if status is-interactive
    # Commands to run in interactive sessions can go here
end

# cd shortcuts
alias p='cd ~/Projects'
alias sp='cd ~/Skolgrejer/Projekt'

# remote connection shortcuts
# alias macmini='ssh elias@192.168.1.12'
# alias sftp-macmini='sftp elias@192.168.1.12'

# misc
# alias ls='ls --color=auto'
alias vim=nvim
alias a='echo Anna is cute'

# initializing zoxide and binding cd to it
zoxide init fish --cmd cd | source
