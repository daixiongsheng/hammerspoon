local fs = require("hs.fs")
local spoon_dir = hs.configdir .. "/Spoons"

local has_dir = function(path)
	return hs.fs.urlFromPath(path) ~= nil
end
if has_dir(spoon_dir) then
	for spoon in fs.dir(spoon_dir) do
		if string.find(spoon, "spoon") then
			spoon = string.gsub(spoon, ".spoon", "")
			hs.loadSpoon(spoon)
		end
	end
else
end
