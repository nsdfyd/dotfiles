require'plugins'
require'settings'
require'bindings'

for filename in io.popen("cd ~/.config/nvim/lua && ls -d */ | cut -f1 -d'/'"):lines() do
  require(filename)
end
