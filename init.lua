-- hs.configdir = os.getenv('HOME') .. '/.hammerspoon'
package.path = hs.configdir ..
		'/?.lua;' .. hs.configdir .. '/?/init.lua;' .. hs.configdir .. '/Spoons/?.spoon/init.lua;' .. package.path

require "modules/spoons"
require "modules/reload"
require "modules/inputstat"

hs.hotkey.bind({ "alt", "shift" }, "c", function()
	spoon.HSKeybindings:toggle()
	spoon.KSheet:toggle()
end)
