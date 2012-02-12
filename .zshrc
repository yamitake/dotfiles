##
# ごったに
source ~/dotfiles/.zshrc.base

#
# git 
#
#autoload bashcompinit
#bashcompinit
#source ~/dotfiles/.zshrc.git

## 環境毎固有の設定
#
case "${OSTYPE}" in
# Mac(Unix)
darwin*)
    # ここに設定
    [ -f ~/dotfiles/.zshrc.osx ] && source ~/dotfiles/.zshrc.osx
    ;;
# Linux
linux*)
    # ここに設定
    [ -f ~/dotfiles/.zshrc.linux ] && source ~/dotfiles/.zshrc.linux
    ;;
esac

## local固有設定
#
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
