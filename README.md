# My dotfiles backup
These files are my all **rc files** or **dotfile** in my ArchLinux system.

These files has included: 
- **picom.conf** ==> this is my picom config file.

- **.bashrc** ==> this is my bash shell config file, it has many alias and envs and so on.

- **.zshrc** ==> this is my zsh shell config file. 

- **.vimrc** ==> this is my vim config file. This is basic vim config file, not contain any plugin.

- **.Xmodmap** ==> this is my keyboard maps.

- **.xinitrc** ==> this is my X-server read config file when X-server startuptime.


## how to restore these files?
Use `git clone` this repository to `$HOME` directory.

- for **picom.conf** ==>
```bash
ln -s "$(echo $HOME)"/dotfiles/picom.conf "$(echo $HOME)"/.config/picom
```

- for **.bashrc** ==>
```bash
ln -s "$(echo $HOME)"/dotfiles/.bashrc "$(echo $HOME)"/.bashrc
```


- for **.zshrc** ==>
```bash
ln -s "$(echo $HOME)"/dotfiles/.zshrc "$(echo $HOME)"/.zshrc
```


- for **.vimrc** ==>
```bash
ln -s "$(echo $HOME)"/dotfiles/.vimrc "$(echo $HOME)"/.vimrc
```


- for **.Xmodmap** ==>
```bash
ln -s "$(echo $HOME)"/dotfiles/.Xmodmap "$(echo $HOME)"/.Xmodmap 
```


- for **.Xinitrc** ==>
```bash
ln -s "$(echo $HOME)"/dotfiles/.Xinitrc "$(echo $HOME)"/.Xinitrc
```




