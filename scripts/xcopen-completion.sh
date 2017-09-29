shopt -s extglob
complete -f -X '!*.@(xcworkspace|xcodeproj|playground|md)' xcopen
