
function opairs(t)
	if 'table'~=type(t) then error("arg not a table",2) end
	local keys = {}
	-- first, sort by type
	-- second, sort by tostring
	for k in pairs(t) do
		local type1 = type(k)
		keys[type1] = keys[type1] or {}
		table.insert(keys[type1],k)
	end
	for _,t in pairs(keys) do
		table.sort(t, function(a,b)
			local type1 = type(a)
			if 'string' == type1 or 'number'==type1 then return a<b end
		end)
		for k,v in pairs(t) do print(v) end
	end
	local function _next(t1, curr)
		local currTyp = type(curr) or next(keys)
		local nextIndex
		return nextIndex, nextValue
	end
	return next,t,nil
end

local testTable = {a = 11, b = 22, c = 33, [1] = 12, [2] = 23, [3] = 34,[false] = "no", [true] = "yes",[{}]="",[{}]=""} -- same as expected out

-- print(next(testTable))
for k,v in opairs(testTable) do
	-- print(k,v)
end