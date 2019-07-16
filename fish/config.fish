
# source ~/.config/fish/path.fish
source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish


set -x N_PREFIX "$HOME/n"    # equivalent of export N_PREFIX="$HOME/n";

if not contains -- $N_PREFIX/bin $PATH
  set PATH $PATH $N_PREFIX/bin
end

# jenv

function export
    set arr (echo $argv|tr = \n)
    set -gx $arr[1] $arr[2]
end

set PATH $HOME/.jenv/shims $PATH

command jenv rehash 2>/dev/null

function jenv
    set cmd $argv[1]
    set arg ""
    if test (count $argv) -gt 1
        # Great... fish first array index is ... 1 !
        set arg $argv[2..-1]
    end

    switch "$cmd"
        case enable-plugin rehash shell shell-options
            set script (jenv "sh-$cmd" "$arg")
            eval $script
        case '*'
            command jenv $cmd $arg
    end
end

rvm default

set PATH $HOME/.jenv/bin $PATH
set PATH $HOME/.yarn/bin $PATH



# THEME PURE #
# set fish_function_path $HOME/.config/fish/functions/theme-pure/functions/ $fish_function_path
# set fish_function_path $HOME/.config/fish/functions/theme-pure/ $fish_function_path
# source $HOME/.config/fish/functions/theme-pure/conf.d/pure.fish

# Readline colors
set -g fish_color_autosuggestion 555 yellow
set -g fish_color_command 5f87d7
set -g fish_color_comment 808080
set -g fish_color_cwd 87af5f
set -g fish_color_cwd_root 5f0000
set -g fish_color_error 870000 --bold
set -g fish_color_escape af5f5f
set -g fish_color_history_current 87afd7
set -g fish_color_host 5f87af
set -g fish_color_match d7d7d7 --background=303030
set -g fish_color_normal normal
set -g fish_color_operator d7d7d7
set -g fish_color_param 5f87af
set -g fish_color_quote d7af5f
set -g fish_color_redirection normal
set -g fish_color_search_match --background=purple
set -g fish_color_status 5f0000
set -g fish_color_user 5f875f
set -g fish_color_valid_path --underline

set -g fish_color_dimmed 555
set -g fish_color_separator 999

# Git prompt status
set -g __fish_git_prompt_showdirtystate 'yes'
set -g __fish_git_prompt_showupstream auto
set -g pure_git_untracked_dirty false

# pure
set pure_threshold_command_duration 1
set pure_separate_prompt_on_error true
set pure_begin_prompt_with_current_directory false
set -U pure_color_success (set_color green)
set -U pure_color_git_dirty (set_color cyan)

# Status Chars
#set __fish_git_prompt_char_dirtystate '*'
set __fish_git_prompt_char_upstream_equal ''
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_dirtystate 'red'

set __fish_git_prompt_color_upstream_ahead ffb90f
set __fish_git_prompt_color_upstream_behind blue

# Local prompt customization
set -e fish_greeting


set -g fish_pager_color_completion normal
set -g fish_pager_color_description 555 yellow
set -g fish_pager_color_prefix cyan
set -g fish_pager_color_progress cyan


# highlighting inside manpages and elsewhere
set -gx LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
set -gx LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
set -gx LESS_TERMCAP_me \e'[0m'           # end mode
set -gx LESS_TERMCAP_se \e'[0m'           # end standout-mode
set -gx LESS_TERMCAP_so \e'[38;5;246m'    # begin standout-mode - info box
set -gx LESS_TERMCAP_ue \e'[0m'           # end underline
set -gx LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline
