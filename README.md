# My dotfiles backup
These files are my all **rc files** or **dotfile** in my ArchLinux system.

These files contained: 
- **picom.conf** ==> is my picom config file.

- **.bashrc** ==> is my bash shell config file, it has many alias and envs and so on.

- **.zshrc** ==> is my zsh shell config file. 

- **.vimrc** ==> is my vim config file. This is basic vim config file, not contain any plugin.




## how to restore these files?
- for **picom.conf** ==>
```bash
ln ~/dotfiles/picom.conf ~/.config/picom/
```

- for **.bashrc** ==>
```bash
ln ~/dotfiles/.bashrc ~/
```


- for **.zshrc** ==>
```bash
ln ~/dotfiles/.zshrc ~/
```


- for **.vimrc** ==>
```bash
ln ~/dotfiles/.vimrc ~/
```

## where are these files from?
- **picom.conf** ==> `ln ~/.config/picom/picom.conf ~/dotfiles/`.
- **.bashrc** ==> `ln ~/.bashrc ~/dotfiles/`.
- **.zshrc** ==> `ln ~/.zshrc ~/dotfiles/`.
- **.vimrc** ==> `ln ~/.vimrc ~/dotfiles/`.





