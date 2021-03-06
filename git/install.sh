. `dirname ${BASH_SOURCE}`/../bash/lib/configfolder.sh

configfolder_git() {
  configfolder_install git/gitignore ~/.gitignore
  git config --global core.excludesfile ~/.gitignore
  git config --global core.editor vim
  git config --global user.name 'Carlos Gajardo'

  git config --global alias.ap 'add --patch'
  git config --global alias.ba 'branch -a'
  git config --global alias.co 'checkout'
  git config --global alias.cob 'checkout -b'
  git config --global alias.cof 'checkout --'
  git config --global alias.ds 'diff --staged'
  git config --global alias.lc '!git log --oneline | head -n1'
  git config --global alias.logx 'log --graph --oneline'
  git config --global alias.psf 'push --force-with-lease'
  git config --global alias.plrb 'pull --rebase'
  git config --global alias.rba 'rebase --abort'
  git config --global alias.rbc 'rebase --continue'
  git config --global alias.rbi 'rebase --interactive'
  git config --global alias.rh 'reset HEAD'
  git config --global alias.rs 'restore'
  git config --global alias.rsp 'restore --patch'
  git config --global alias.rss 'restore --staged'
  git config --global alias.st 'status'
  git config --global alias.today 'log --since=4am'
}

if [ $0 == "$BASH_SOURCE" ]; then
  configfolder_ask "Install git?" && configfolder_git
  exit 0
fi
