# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

if [[ $TERM == linux ]]; then
  ZSH_THEME="${ZSH_THEME:-bureau}"
  # ZSH_THEME="powerlevel10k/powerlevel10k"
  # POWERLEVEL9K_MODE=PLAIN
else
  ZSH_THEME="powerlevel10k/powerlevel10k"
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
fi

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
HIST_STAMPS="yyyy-mm-dd"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR='micro'

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi


# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias screenies='mv ~/Desktop/*Screen*.png ~/Desktop/screenies'

alias o69met='curl -sS https://tgftp.nws.noaa.gov/data/observations/metar/stations/KO69.TXT | cat'
alias o69metd='curl -sS https://tgftp.nws.noaa.gov/data/observations/metar/decoded/KO69.TXT | cat'
alias stsmet='curl -sS https://tgftp.nws.noaa.gov/data/observations/metar/stations/KSTS.TXT | cat'
alias stsmetd='curl -sS https://tgftp.nws.noaa.gov/data/observations/metar/decoded/KSTS.TXT | cat'
alias sfomet='curl -sS https://tgftp.nws.noaa.gov/data/observations/metar/stations/KSFO.TXT | cat'
alias sfometd='curl -sS https://tgftp.nws.noaa.gov/data/observations/metar/decoded/KSFO.TXT | cat'
alias lxtmet='curl -sS https://tgftp.nws.noaa.gov/data/observations/metar/stations/KLXT.TXT | cat'
alias lxtmetd='curl -sS https://tgftp.nws.noaa.gov/data/observations/metar/decoded/KLXT.TXT | cat'
alias sfoafd='curl https://tgftp.nws.noaa.gov/data/raw/fx/fxus66.kmtr.afd.mtr.txt -s -o ~/.sfoafd; less -P "$(sed -n -e 2p ~/.sfoafd) - ISSUED $(sed -n -e 6p ~/.sfoafd)" ~/.sfoafd'
alias eaxafd='curl https://tgftp.nws.noaa.gov/data/raw/fx/fxus63.keax.afd.eax.txt -s -o ~/.eaxafd; less -P "$(sed -n -e 2p ~/.eaxafd) - ISSUED $(sed -n -e 6p ~/.eaxafd)" ~/.eaxafd'
alias sfoprof='open https://met.nps.edu/~lind/profiler/map/cccoast.html'
alias ordprof='curl -sS https://met.nps.edu/\~lind/profiler/ord_915.gif | kitty +kitten icat --align left'
alias bbyprof='curl -sS https://met.nps.edu/~lind/profiler/bby_high.gif | kitty +kitten icat --align left'
alias bbybndy='curl -sS https://met.nps.edu/~lind/profiler/bby_449.gif | kitty +kitten icat --align left'
alias nfc='curl -Ss https://www.wpc.ncep.noaa.gov/NationalForecastChart/staticmaps/noaad1.png | kitty +kitten icat --align left'

alias driveway='curl -sS http://driveway.tworock-cameras.lan/snap.jpeg | kitty +kitten icat --align left'
alias roof='curl -sS http://roof.tworock-cameras.lan/snap.jpeg | kitty +kitten icat --align left'

export PATH="$HOME/.local/bin:$PATH"
