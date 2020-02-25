table.length = require "table.length"


local args = function(...)
	local o = {...}
	local length = table.length(o)
	local single = 1==length
	for k,v in pairs(o) do


	return {}
end

local a = args(true,function() end,false,12,"mimi",{a = 3, b = 3, c = 4})
local s, am = a.single, a.amount
print(s,am)

return args