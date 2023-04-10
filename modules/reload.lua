local pathwatcher = require "hs.pathwatcher"
local alert = require "hs.alert"

function reloadConfig(files)
	doReload = false
	for _, file in pairs(files) do
		if string.find(file, ".lua") or string.find(file, ".spoon") then
			doReload = true
		end
	end
	if doReload then
		hs.reload()
	end
end

pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon", reloadConfig):start()
alert.show("Hammerspoon Config Reloaded")
