
export ZSH="$HOME/.oh-my-zsh"


# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="alanpeabody"

ENABLE_CORRECTION="true"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    fast-syntax-highlighting
    zsh-autocomplete
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
   export EDITOR='nvim'
fi



#------ ALIASES ------#
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias i="yay -S"
alias kana="kanarenshu"
