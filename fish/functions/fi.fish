set -g FZF_DEFAULT_COMMAND "fd --type f --hidden --follow --exclude .git"
set -g FZF_CTRL_T_COMMAND "command find -L \$dir -type f 2> /dev/null | sed '1d; s#^\./##'"

function fi --description "Locate a file"
	locate . | fzf --query "$argv"
end