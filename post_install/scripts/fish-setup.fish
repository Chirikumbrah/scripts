# !/bin/fish

# change the default shell to fish
/bin/bash -c chsh -s /bin/fish yr
/bin/bash -c chsh -s /bin/fish root

# install Fisher plugin manager
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jorgebucaran/autopair.fish
fisher install PatrickF1/fzf.fish
fisher install dracula/fish
