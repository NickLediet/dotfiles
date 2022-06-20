# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
source "$HOME/.profile"

# ~/.zshrc
source ~/.zsh_plugins.sh

alias reload='antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh && source ~/.zshrc'
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set the theme
ZSH_THEME="agnoster"

# Reset the npm command to just be normal npm call
npm() {
	command "$0" "$@"
}
# Reset the yarn command to just be normal npm call
yarn() {
	~/.nvm/versions/node/$(node -v)/bin/yarn "$@"
}
# Configure zsh-users/zsh-autosuggestions
zmodload zsh/zpty
ZSH_AUTOSUGGEST_STRATEGY=(completion history)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
