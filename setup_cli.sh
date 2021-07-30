#!/bin/bash

### Configure terminal ###

#Check if running OSX

if [[ $OSTYPE == 'darwin'* ]]; then

    #chsh -s $(which zsh)

    # Install oh my zsh fw
    #sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # Install Powerlevel10k zsh theme
    #git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# Update .zshrc file with pk10 theme
    #ZSH_THEME="powerlevel10k/powerlevel10k"
fi

### Install and configure vim ###

#Install vim plugins and misc goodies
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

#Install SpaceGray colorscheme
git clone git://github.com/ajh17/Spacegray.vim ~/.vim/pack/vendor/start/Spacegray

#Install Iceberg color scheme
git clone git://github.com/cocopon/iceberg.vim ~/.vim/pack/vendor/start/Iceberg

#Create custom vim config
touch ~/.vim_runtime/my_configs.vim

#Add custom modifications
echo ":set number" >> my_configs.vim
echo ":syntax on" >> my_config.vim
echo ":set termguicolors" >> my_config.vim
echo ":colorscheme iceberg" >> my_config.vim
echo ":syntax on" >> my_config.vim
echo ":hi LineNr ctermbg=236 ctermfg=3 guibg=#1e2132 guifg=#444b71" >> my_config.vim
