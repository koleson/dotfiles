alias sfomet='curl http://tgftp.nws.noaa.gov/data/observations/metar/stations/KSFO.TXT -s -o ~/.sfomet; less ~/.sfomet'
alias sfometd='curl http://tgftp.nws.noaa.gov/data/observations/metar/decoded/KSFO.TXT -s -o ~/.sfometd; less ~/.sfometd'
alias lxtmet='curl http://tgftp.nws.noaa.gov/data/observations/metar/stations/KLXT.TXT -s -o ~/.lxtmet; less ~/.lxtmet'
alias lxtmetd='curl http://tgftp.nws.noaa.gov/data/observations/metar/decoded/KLXT.TXT -s -o ~/.lxtmetd; less ~/.lxtmetd'
alias sfoafd='curl http://tgftp.nws.noaa.gov/data/raw/fx/fxus66.kmtr.afd.mtr.txt -s -o ~/.sfoafd; less -P "$(sed -n -e 2p ~/.sfoafd) - ISSUED $(sed -n -e 6p ~/.sfoafd)" ~/.sfoafd' 
alias eaxafd='curl http://tgftp.nws.noaa.gov/data/raw/fx/fxus63.keax.afd.eax.txt -s -o ~/.eaxafd; less -P "$(sed -n -e 2p ~/.eaxafd) - ISSUED $(sed -n -e 6p ~/.eaxafd)" ~/.eaxafd'
alias sfoprof='open http://met.nps.edu/~lind/profiler/map/cccoast.html'
alias ordprof='open http://met.nps.edu/~lind/profiler/ord_915.gif'
alias wttr='curl wttr.in/94107'

alias cleardd='rm -rf ~/Library/Developer/Xcode/DerivedData/'
alias clearpp='rm -rf "~/Library/MobileDevice/Provisioning Profiles"'

alias xcopen='open -a Xcode'

test -f ~/.work_profile && source ~/.work_profile

# git completion - use deploy.sh to put this in home folder
test -f ~/.git-completion.bash && source ~/.git-completion.bash

if test -f ~/.git-prompt.sh
then 
	source ~/.git-prompt.sh
	PS1='[\u@\h:\W]$(__git_ps1 " (%s)")\$ '
else
	PS1='[\u@\h:\W]\$ '
fi

# xcopen completion
test -f ~/.xcopen-completion.sh && source ~/.xcopen-completion.sh

# ssh host completion
test -f ~/.ssh-completion.sh && source ~/.ssh-completion.sh

