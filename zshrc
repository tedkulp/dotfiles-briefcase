# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="tjkirch"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"
alias powify="nocorrect powify"
alias vagrant="nocorrect vagrant"
alias knife="nocorrect knife"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github cap rails ruby svn brew rvm)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/tedkulp/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

PROMPT='%(?, ,%{$fg[red]%}FAIL: $?%{$reset_color%}
)
%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}: %{$fg_bold[blue]%}%~%{$fg[green]%}$(my_rvm_prompt_info)%{$reset_color%}$(git_prompt_info)
%_$(prompt_char) '

my_rvm_prompt_info()
{
  ruby_version=$(~/.rvm/bin/rvm-prompt 2> /dev/null) || return
  echo " $ruby_version"
}

mvim()
{
  (unset GEM_PATH GEM_HOME; command mvim "$@")
}

# Startup tmuxinator
if [[ -s "$HOME/.tmuxinator/scripts/tmuxinator" ]] ; then source "$HOME/.tmuxinator/scripts/tmuxinator" ; fi

# Startup rvm
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then source "$HOME/.rvm/scripts/rvm" ; fi
