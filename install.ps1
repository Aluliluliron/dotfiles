mkdir $HOME/.config
function ln ($target, $link) { New-Item -Path $link -ItemType SymbolicLink -Value $target }
ln $HOME/dotfiles/.config/vim $HOME/.config/vim
ln $HOME/dotfiles/.config/poshthemes $HOME/.config/poshthemes
ln $HOME/dotfiles/.config/thefuck $HOME/.config/thefuck
ln $HOME/dotfiles/.config/colorls $HOME/.config/colorls
ln $HOME/dotfiles/.config/nvim/init.vim $HOME/Appdata/Local/nvim/init.vim
ln $HOME/dotfiles/.vimrc $HOME/.vimrc
ln $HOME/dotfiles/powershell/Microsoft.PowerShell_profile.ps1 $HOME/Documents/PowerShell/Microsoft.PowerShell_profile.ps1
