local platform = require('utils.platform')

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'wsl' }
   options.launch_menu = {
      { label = 'mne2', args = { 'ssh', 'mnemosyne2' } },
      { label = 'mne3', args = { 'ssh', 'mnemosyne3' } },
      { label = 'mne4', args = { 'ssh', 'mnemosyne4' } },
      { label = 'mne5', args = { 'ssh', 'mnemosyne5' } },
      { label = 'gpunode', args = { 'ssh' , 'tfc-gpu'} },
      { label = 'h100', args = { 'ssh', 'h100' }},
      { label = '118', args = {'ssh', '118'}},
      { label = 'PowerShell Core', args = { 'pwsh', '-NoLogo' } },


   }
elseif platform.is_mac then
   options.default_prog = { 'zsh', '-l' }
   options.launch_menu = {
      { label = 'mne2', args = { 'ssh', 'mnemosyne2' } },
      { label = 'mne3', args = { 'ssh', 'mnemosyne3' } },
      { label = 'mne4', args = { 'ssh', 'mnemosyne4' } },
      { label = 'mne5', args = { 'ssh', 'mnemosyne5' } },
      { label = 'gpunode', args = { 'ssh' , 'tfc-gpu'} },
      { label = 'h100', args = { 'ssh', 'h100' }},
      { label = '118', args = {'ssh', '118'}},
   }
elseif platform.is_linux then
   options.default_prog = { 'zsh', '-l' }
   options.launch_menu = {
      { label = 'mne2', args = { 'ssh', 'mnemosyne2' } },
      { label = 'mne3', args = { 'ssh', 'mnemosyne3' } },
      { label = 'mne4', args = { 'ssh', 'mnemosyne4' } },
      { label = 'mne5', args = { 'ssh', 'mnemosyne5' } },
      { label = 'gpunode', args = { 'ssh' , 'tfc-gpu'} },
      { label = 'h100', args = { 'ssh', 'h100' }},
      { label = '118', args = {'ssh', '118'}},
   }
end

return options
