Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineOption -predictionsource history
Set-PSReadLineOption -Colors @{ 
  Command           = '#CF8EF4'
  String            = '#44EB9F'
  Error             = '#FA5AA4'
  Parameter         = '#A1D5F7'
  Operator          = '#63C5EA'
  Emphasis          = '#44EB9F'
  InlinePrediction  = '#7382A1'
  Comment           = '#7382A1'
  Variable          = '#A1D5F7'
  Number            = '#A1D5F7'
  Member            = '#A1D5F7'
  Default           = '#A1D5F7'
}
Set-PSReadLineOption -BellStyle None
Import-Module posh-git
Set-PoshPrompt -Theme $HOME\.config\poshthemes\metaace.omp.toml
function .. { set-location ".." }
function :q { exit }
function fish { wsl -e fish @args }
function lc { colorls --dark --sd @args }
function Neovim { nvim @args }
function make-link ($target, $link) { New-Item -Path $link -ItemType SymbolicLink -Value $target }
Set-Alias ls lc
Set-Alias ln make-link
Set-Alias vim Neovim
Set-Item -Path Env:PYTHONIOENCODING -Value 'utf-8'
Invoke-Expression ("$(thefuck --alias)")
