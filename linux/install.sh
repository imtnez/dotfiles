#!/bin/bash

script_path=`realpath "$0"`
script_dir=`dirname "$script_path"`

slinks=(
"$script_dir/binaries/tmux-*:$HOME/.local/bin/tmux"
"$script_dir/binaries/nvim-*:$HOME/.local/bin/nvim"
"$script_dir/binaries/mosh-client-*:$HOME/.local/bin/mosh-client"
"$script_dir/binaries/mosh-server-*:$HOME/.local/bin/mosh-server"
"$script_dir/configs/tmux.conf:$HOME/.tmux.conf"
"$script_dir/configs/init.vim:$HOME/.vimrc"
"$script_dir/configs/init.vim:$HOME/.config/nvim/init.vim"
)

opt_zsh=(
   "$script_dir/configs/zshrc:$HOME/.local/.zshrc"
   "$script_dir/configs/antigen.zsh:$HOME/.local/.antigen.zsh"
   "$script_dir/configs/zshenv:$HOME/.zshenv"
)

split() {
   IFS=$'\n' read -d "" -ra arr <<< "${1//$2/$'\n'}"
   printf '%s\n' "${arr[@]}"
}

prepare_colors() {
   if which tput >/dev/null 2>&1; then
      ncolors=$(tput colors)
   fi

   if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
      nor="$(tput sgr0)"
      red="$(tput setaf 1)"
      grn="$(tput setaf 2)"
      yel="$(tput setaf 3)"
      blu="$(tput setaf 4)"
   else
      nor=""
      red=""
      grn=""
      yel=""
      blu=""
   fi
}

make_links() {
   for elem in "${slinks[@]}"; do
      arr=($(split "$elem" ":"))

      from_path=${arr[0]}
      to_path=${arr[1]}

      [ ! -e "$from_path" ] && echo -e "$from_path $red(not exists)$nor" && continue

      [ $force ] && rm -i "$to_path"

      printf '%s ' "$to_path"

      [ -L "$to_path" ] && echo -e "$grn(already done)$nor" && continue
      [ -e "$to_path" ] && echo -e "$red(should be removed first)$nor" && continue

      mkdir -p "$(dirname $to_path)"
      ln -s "$from_path" "$to_path"
      echo -e "${grn}DONE${nor}"
   done
}

config_zsh() {
   type zsh >/dev/null 2>&1 && return

   echo ""
   echo "${yel}Wanna install ZSH?$nor"
   echo "   sudo apt install zsh && \\"
   echo "   git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.local/.oh-my-zsh && \\"
   echo "   chsh -s \$(which zsh)"
   echo ""
}

force=
zsh=
usage(){ echo "Usage: $0 [-f] [-h]" 1>&2; exit 1; }

while getopts "fhz" opt; do
   case "$opt" in
      f) 
         force=1
         ;;
      z)
         zsh=1
         slinks=( "${slinks[@]}" "${opt_zsh[@]}" )
         ;;
      h | *) 
         usage
         ;;
   esac
done

prepare_colors
make_links
[ $zsh ] && config_zsh
