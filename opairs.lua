local List = require "SortedList"
function opairs(t)
	if 'table'~=type(t) then error("arg not a table",2) end
	print("Warning: the return value of opairs is NOT a next function with parameters")
	local keys = List()
	for k in pairs(t) do keys:Insert(k) end
	local function _next(a,b)
		local k = keys:Next()
		return k,t[k]
	end
	return _next,t,nil
end
local testTable = {a = 11, b = 22, c = 33, [1] = 12, [2] = 23, [3] = 34,[false] = "no", [true] = "yes",[{}]="",[{}]=""} -- same as expected out

-- print(next(testTable))
for k,v in opairs(testTable) do
	print(k,v)
end