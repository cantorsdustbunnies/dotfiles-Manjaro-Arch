source $HOME/.zsh_aliases
source /usr/share/nvm/init-nvm.sh
export ZSH="/home/stelly/.oh-my-zsh"

# Allow changing prompt in tmux
if (($+TMUX)); then
    ZSH_THEME="stelly-tmux"
else
    ZSH_THEME="powerlevel10k/powerlevel10k"
    [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
fi

plugins=(
    git
    zsh-autosuggestions
    tmux
)
# Set Autosuggest color:
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#42446f,bold"
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.


# Change prompt if in tmux

export HISTSIZE="100000000"
export SAVEHIST=$HISTSIZE
export MYVIMRC=$HOME/.config/nvim/init.vim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
