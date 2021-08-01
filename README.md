clone this repo to the following directory and create symlink

```bash
git clone --recursive -j29 https://github.com/AbdullahDahmash/vim8-config.git ~/.vim/pack/vendor/start/

ln -s ~/.vim/pack/vendor/start/.vimrc ~/.vimrc
ln -s ~/.vim/pack/vendor/start/.tmux.conf ~/.tmux.conf
```

Note: 29 is number of packages to be downloaded simultaneously. Currenty 29 is the number of all packages
