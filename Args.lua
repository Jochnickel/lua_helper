table.length = require "table.length"


local args = function(o)
	local out = {}
	out.amount = table.length(o)
	out.single = 1==out.amount
	out.byType = {}
	for k,v in pairs(o) do
		local t = type(v)
		out.byType[t] = out.byType[t] or {}
		table.insert(out.byType[t],v)
	end
	for k,v in pairs(out.byType) do
		if 1==#v then out[k] = v[1]
		else out[k..'s'] = v end
	end
	return out
end

local a = args{true,function() end,false,12,"mimi",{a = 3, b = 3, c = 4}}
-- print(a)

return args