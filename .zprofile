if [ -f /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [ -d ~/.cargo/bin ]; then
  PATH=$PATH:~/.cargo/bin
fi

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
