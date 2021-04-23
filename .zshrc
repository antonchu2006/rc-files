# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"
alias ll='ls -la'
alias ls='lsd'
alias cls='clear'
alias cat='bat'
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh




function cdb() {
	folderBack=""
	if [[ $# > 0 && $1 > 0 ]]
	then
		for ((counter = 0; counter < $1; counter ++))
		do
			folderBack+="../"
		done
		cd $folderBack
	else
		cd ../
	fi
}
