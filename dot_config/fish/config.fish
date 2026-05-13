if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish | source

abbr --add bw bunx bun-workspaces
abbr --add oc opencode
abbr --add brd bun run dev
abbr --add ls eza
abbr --add lvim NVIM_APPNAME=nvim-lazyvim nvim
abbr --add hx helix

string match -q "$TERM_PROGRAM" kiro and . (kiro --locate-shell-integration-path fish)

export PATH="/home/sepagian/.local/bin:$PATH"
set -gx PATH $PATH ~/.config/yazi

set -gx EDITOR helix
set -gx VISUAL helix

# opencode
fish_add_path /home/sepagian/.opencode/bin
