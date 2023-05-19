typeset -a y7manpath
y7psplit y7manpath "$MANPATH"
for y7d in "${y7_dirs[@]}"
do
    [[ -d "$y7d/man" ]] && y7arrayadd y7manpath -d "$y7d/man"
    [[ -d "$y7d/share/man" ]] && y7arrayadd y7manpath -d "$y7d/share/man"
done
MANPATH=$(y7pjoin "${y7manpath[@]}")
[[ -n $MANPATH ]] && export MANPATH
