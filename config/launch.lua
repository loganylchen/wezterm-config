local platform = require('utils.platform')

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'ssh' , 'gpunode' }
   options.launch_menu = {
      {
         label = 'mne3',
         args = { 'ssh', 'mnemosyne3' },
      },
      {
         label = 'mne4',
         args = { 'ssh' , 'mnemosyne4'},
      },
      {
         label = 'gpunode',
         args = { 'ssh' , 'gpunode'},
      },
      { label = 'PowerShell Core', args = { 'pwsh', '-NoLogo' } },


   }
elseif platform.is_mac then
   options.default_prog = { '/opt/homebrew/bin/fish', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { '/opt/homebrew/bin/fish', '-l' } },
      { label = 'Nushell', args = { '/opt/homebrew/bin/nu', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
elseif platform.is_linux then
   options.default_prog = { 'zsh', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { 'fish', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
end

return options
