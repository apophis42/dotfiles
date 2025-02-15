# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/m42a/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Add some keybinds that should exist by default
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey "\e[3~" delete-char
bindkey "\e[5~" history-beginning-search-backward
bindkey "\e[6~" history-beginning-search-forward
bindkey "\eOd"  backward-word
bindkey "\eOc"  forward-word
bindkey "^U"    backward-kill-line

# Set the prompt
autoload -U colors && colors
PS1="%F{yellow}%n%f@%F{magenta}%m%f%# "
RPS1="%F{cyan}%(?..[%?] )%F{green}%~%f"
if [[ "$ubuntu" == 1 ]]; then
   RPS1="(Ubuntu) ${RPS1}"
fi

setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt inc_append_history
setopt interactive_comments
unsetopt list_ambiguous
unsetopt list_beep

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls --color'
alias ll='ls -l'
alias li='ls -li'
alias la='ls -la'
alias ..='cd ..'
alias units='units -v'
alias grep='grep --color=auto'
alias yd='youtube-dl --no-part -v --no-playlist'
alias skype='apulse32 skype'

function defaults () {
	pushd /cygdrive/c/Program\ Files\ \(x86\)/Common\ Files/Apple/Apple\ Application\ Support/ > /dev/null 2> /dev/null
	./defaults "$@"
	popd > /dev/null 2> /dev/null
}

export EDITOR=vim
export PATH=$PATH:~/bini
# Make systemd not page
export SYSTEMD_PAGER=

# Make everything colorful
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/share/zsh-syntax-highlighting/highlighters
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=magenta'

# Colorize gcc output with 4.9 or later
export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

# Make update-mime-database not take 3 years to finish
export PKGSYSTEM_DISABLE_FSYNC=1

# Use both the 32 and 64-bit ladspa plugins
export LADSPA_PATH=/usr/lib/ladspa:/usr/lib32/ladspa

fpath=(/usr/local/share/zsh-completions $fpath)
#pom
fortune
