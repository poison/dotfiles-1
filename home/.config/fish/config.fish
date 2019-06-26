alias ...="cd ../.."

alias cat="bat"
alias g="hub"
alias git="hub"
alias h="history"
alias l="ls -1a"

alias nah="git reset --hard && git clean -df"
alias wip="git add --all && git commit --all -m 'wip' && git push"

alias art="php artisan"
alias phpunit="vendor/bin/phpunit"
alias wp="vendor/bin/wp"

alias grep="grep --color=auto"

set fish_greeting

set -x EDITOR "vim"

set -x PATH "/usr/local/sbin" $PATH
set -x PATH "/usr/local/share/npm/bin" $PATH
set -x PATH "$HOME/.composer/vendor/bin" $PATH
set -x PATH "usr/local/opt/mysql@5.7/bin" $PATH

set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8

set -gx LESS_TERMCAP_mb (set_color -o blue)
set -gx LESS_TERMCAP_md (set_color -o blue)
set -gx LESS_TERMCAP_me (set_color normal)
set -gx LESS_TERMCAP_se (set_color normal)
set -gx LESS_TERMCAP_so (set_color -b blue -o yellow)
set -gx LESS_TERMCAP_ue (set_color normal)
set -gx LESS_TERMCAP_us (set_color -o green)

set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_hide_untrackedfiles 1
set -g __fish_git_prompt_color_branch green
set -g __fish_git_prompt_color_dirtystate blue
set -g __fish_git_prompt_char_dirtystate "+"
set -g __fish_git_prompt_color_stagedstate yellow
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
set -g __fish_git_prompt_color_cleanstate green

function fish_title
	if [ $_ = 'fish' ]
        echo (prompt_pwd)
    else
        echo $_
    end
end

function fish_prompt
    echo -n -s (set_color magenta) '❯ ' (set_color blue) (prompt_pwd) (set_color normal) (__fish_git_prompt) (set_color normal) ' '
end