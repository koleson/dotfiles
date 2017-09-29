shopt -s extglob
complete -f -X '!*.@(xcworkspace|xcodeproj|playground)' xcopen
