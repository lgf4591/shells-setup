#! /usr/bin/sh
# https://starship.rs/zh-cn/guide/

curl -sS https://starship.rs/install.sh | sh
curl -L -o ~/.starship.toml https://github.com/lgf4591/shells-setup/raw/main/starship/starship.toml


echo " "  >> ~/.bashrc
echo " "  >> ~/.bashrc
echo "export STARSHIP_CONFIG=~/.starship.toml"  >> ~/.bashrc 
echo 'eval "$(starship init bash)"' >> ~/.bashrc


echo " "  >> ~/.zshrc
echo " "  >> ~/.zshrc
echo "export STARSHIP_CONFIG=~/.starship.toml"  >> ~/.zshrc 
echo 'eval "$(starship init zsh)"' >> ~/.zshrc