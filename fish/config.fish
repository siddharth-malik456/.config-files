if status is-interactive
  # Commands to run in interactive sessions can go here
starship init fish | source
end


zoxide init fish | source

# Common Aliases
alias cd="z" 
alias ls="lsd"
alias cat="bat"

thefuck --alias | source
