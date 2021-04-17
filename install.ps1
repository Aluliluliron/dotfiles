mkdir $HOME/.config
function mklink ($target, $link) { New-Item -Path $link -ItemType SymbolicLink -Value $target -Force }
mklink $HOME/dotfiles/.config/vim $HOME/.config/vim
mklink $HOME/dotfiles/.config/poshthemes $HOME/.config/poshthemes
mklink $HOME/dotfiles/.config/thefuck $HOME/.config/thefuck
mklink $HOME/dotfiles/.config/colorls $HOME/.config/colorls
mklink $HOME/dotfiles/.config/nvim/init.vim $HOME/Appdata/Local/nvim/init.vim
mklink $HOME/dotfiles/.vimrc $HOME/.vimrc
mklink $HOME/dotfiles/powershell/Microsoft.PowerShell_profile.ps1 $HOME/Documents/PowerShell/Microsoft.PowerShell_profile.ps1
