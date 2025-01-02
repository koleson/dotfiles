
if [ -f /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

alias screenies='mv ~/Desktop/*Screen*.png ~/Desktop/screenies'
alias sfomet='curl https://tgftp.nws.noaa.gov/data/observations/metar/stations/KSFO.TXT -s -o ~/.sfomet; less ~/.sfomet'
alias sfometd='curl https://tgftp.nws.noaa.gov/data/observations/metar/decoded/KSFO.TXT -s -o ~/.sfometd; less ~/.sfometd'
alias lxtmet='curl https://tgftp.nws.noaa.gov/data/observations/metar/stations/KLXT.TXT -s -o ~/.lxtmet; less ~/.lxtmet'
alias lxtmetd='curl https://tgftp.nws.noaa.gov/data/observations/metar/decoded/KLXT.TXT -s -o ~/.lxtmetd; less ~/.lxtmetd'
alias sfoafd='curl https://tgftp.nws.noaa.gov/data/raw/fx/fxus66.kmtr.afd.mtr.txt -s -o ~/.sfoafd; less -P "$(sed -n -e 2p ~/.sfoafd) - ISSUED $(sed -n -e 6p ~/.sfoafd)" ~/.sfoafd' 
alias eaxafd='curl https://tgftp.nws.noaa.gov/data/raw/fx/fxus63.keax.afd.eax.txt -s -o ~/.eaxafd; less -P "$(sed -n -e 2p ~/.eaxafd) - ISSUED $(sed -n -e 6p ~/.eaxafd)" ~/.eaxafd'
alias sfoprof='open https://met.nps.edu/~lind/profiler/map/cccoast.html'
alias ordprof='open https://met.nps.edu/~lind/profiler/ord_915.gif'
alias bbyprof='open https://met.nps.edu/~lind/profiler/bby_high.gif'
alias bbybndy='open https://met.nps.edu/~lind/profiler/bby_449.gif'
