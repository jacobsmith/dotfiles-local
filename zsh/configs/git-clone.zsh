function git-clone() {
  USERNAME=$(echo $1 | cut -d '/' -f 4)
  REPO=$(echo $1 | cut -d '/' -f 5)

  CODE_PATH="$HOME/github/$USERNAME/$REPO"
  mkdir -p "$CODE_PATH"
  cd "$CODE_PATH"
  git clone $1
}
