#!/usr/bin/env bash 
export PATH=$PATH:/usr/local/bin

# abort if we're already inside a TMUX session
[ "$TMUX" == "" ] || exit 0 

# abort if this is a login shell
shopt -q login_shell && exit 0

# abort if tmux is not installed (done here so warnings are emmitted)
hash tmux 2>/dev/null || { echo >&2 "tmux is required but it's not installed.  Aborting."; exit 1; }

# startup a "default" session if none currently exists
tmux has-session -t _default || tmux new-session -s _default -d

# present menu for user to choose which workspace to open
PS3="Please choose your session: "
options=($(tmux list-sessions -F "#S") "NEW SESSION" "BASH")
echo "Available sessions"
echo "------------------"
echo " "
select opt in "${options[@]}"
do
    case $opt in
        "NEW SESSION")
            read -p "Enter new session name: " SESSION_NAME
            tmux -2 new -s "$SESSION_NAME"
            break
            ;;
        "BASH")
            SKIP_TMUX="t" bash --login
            break;;
        *) 
            tmux -2 attach-session -t $opt 
            break
            ;; 
    esac
done

