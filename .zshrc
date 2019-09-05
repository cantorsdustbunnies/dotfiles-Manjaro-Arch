source $HOME/.bash_aliases
source /usr/share/nvm/init-nvm.sh
export ZSH="/home/stelly/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    zsh-autosuggestions

)
# Set Autosuggest color:
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#42446f,bold"
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

export HISTSIZE="100000000"
export SAVEHIST=$HISTSIZE
export MYVIMRC=$HOME/.config/nvim/init.vim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
