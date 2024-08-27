#source alias addon
source .config/addons/Alias/alias.sh

#homebrew 

#pkg sourcing

#zsh-syntax-highlighting 
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#zsh-autosuggestions 
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh


#fzf
eval $(fzf --zsh)

#use fd instead of fzf
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

_fzf_compgen_path() {
  fd --hidden --exclude .git . $1
}

_fzf_compgen_dir() {
  fd --type=d= --hidden --exclude .git . $1
}

#the fuck
eval $(thefuck --alias)

#source ~/.config/addons/plugins/brewmodifiedinstaller/brew.sh
