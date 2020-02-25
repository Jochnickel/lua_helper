local List = require "SortedList"
local opairs = function(t,nowarning)
	if 'table'~=type(t) then error("arg not a table", 2) end
	if nowarning~="nowarning" then print('Warning: the return value of opairs is NOT a next function with parameters. Supress with opairs(...,"nowarning")') end
	local keys = List()
	for k in pairs(t) do keys:Insert(k) end
	local function _next(a,b)
		local k = keys:Next()
		return k,t[k]
	end
	return _next,t,nil
end

return opairs