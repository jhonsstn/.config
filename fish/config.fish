if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
set -g fish_greeting
zoxide init fish | source
source ~/.asdf/asdf.fish


# pnpm
set -gx PNPM_HOME "/home/jhon/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
