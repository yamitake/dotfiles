# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export active_ruby=$(rbenv version-name)
[ -f ~/dotfiles/bin/bundler-exec.sh ] && source ~/dotfiles/bin/bundler-exec.sh
