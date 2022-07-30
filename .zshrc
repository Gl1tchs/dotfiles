clear
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="alanpeabody"

sh $HOME/zsh/zsh-syntax-highlighting.sh

plugins=(
    git
    colored-man-pages
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source ~/.profile
source $ZSH/oh-my-zsh.sh

