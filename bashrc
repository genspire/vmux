if command -v tm>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && [ -z $SKIP_TMUX ] && tm
fi
