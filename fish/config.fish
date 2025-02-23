if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
set -g fish_greeting
zoxide init fish | source
source ~/.asdf/asdf.fish
pyenv init - | source

# pnpm
set -gx PNPM_HOME "/home/jhon/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
function storePathForWindowsTerminal --on-variable PWD
    if test -n "$WT_SESSION"
      printf "\e]9;9;%s\e\\" (wslpath -w "$PWD")
    end
end
