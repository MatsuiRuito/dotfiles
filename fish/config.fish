#echo '
#
#                                                (  ) (@@) ( )  (@)  ()    @@    O     @     O     @      O
#                                           (@@@)
#                                       (    )
#                                    (@@@@)
#
#                                  (   )
#                                  _______  < HELLO WORLD !!
#                                /:::::::::\   ______
#                            ( \/::::::::::::\/     _)
#                             (|::_A__A_:::::|    _)
#                              |:| O   O |:::|  _)
#                              l:( " _ " |:|:|_)
#                               l C --C  l:|:|
#                                l:/\     l:/ )
#                                    `~U^^^U~/
#'
export XDG_CONFIG_HOME="$HOME/.config"

set -x TERM xterm-256color
set -U fish_prompt_pwd_dir_length 0

# alias
alias la 'ls -a'
alias ll 'ls -l'
alias g 'git'

alias toggl 'python /Applications/toggl-cli/toggl.py'
alias vi 'nvim'
alias nya 'nyaovim'
alias findf "find ./ -type f -print | xargs grep $1"

# sudo の後のコマンドでエイリアスを有効にする
alias sudo 'sudo '

# thefuck
thefuck --alias | source

# rbenv
set -x PATH $PATH "$HOME/.rbenv/shims"
source (rbenv init - | psub)

#pyenv
set -gx PYENV_ROOT "$HOME/.pyenv"
set -x PATH $PATH "$PYENV_ROOT/bin/"
source (pyenv init - | psub)
