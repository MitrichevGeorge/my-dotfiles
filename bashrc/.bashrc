#
# ~/.bashrc
#

[[ $- != *i* ]] && return

if [ -d ~/.bashrc.d ]; then
   for file in ~/.bashrc.d/*.sh; do
      [ -r "$file" ] && source "$file"
   done
fi

export PATH="/home/user/bin:$PATH"
