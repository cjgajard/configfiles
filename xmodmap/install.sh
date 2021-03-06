. `dirname ${BASH_SOURCE}`/../bash/lib/configfolder.sh

configfolder_xmodmap() {
  set -e

  cmd=$HOME/.Xmodmap
  desktopname=xmodmap.desktop

  if [ -f "${cmd}" ]; then
    echo "The file ${cmd} already exists."; exit 1
  fi

  ln -s $(readlink -f Xmodmap) ${cmd}

  autostart=$HOME/.config/autostart
  desktop=${autostart}/${desktopname}
  mkdir -p ${autostart}

  if [ -f "${desktop}" ]; then
    echo "The file ${desktop} alread exists."; exit 1
  fi

  ln -s $(readlink -f ${desktopname}) ${desktop}
}

if [ $0 == "$BASH_SOURCE" ]; then
  configfolder_ask "Install xmodmap config?" && configfolder_xmodmap
  exit 0
fi
