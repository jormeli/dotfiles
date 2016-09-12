source ~/.zgen/zgen.zsh
. /home/allu/Downloads/torch/install/bin/torch-activate

# if the init script doesn't exist
if ! zgen saved; then
    
    # specify plugins here
    zgen oh-my-zsh
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh themes/arrow

    # generate the init script from plugins above
    zgen save
fi

export NCOLOR=cyan

export EDITOR=/usr/bin/vim
