local _Gprint = _G.print
local printt = function(first,...)
	if 0==#{...} and 'table'==type(first) then
		for k,v in pairs(first) do print('['..k..']',v) end
		return
	end
	print(first,...)
end

printt({1},nil)

return printt