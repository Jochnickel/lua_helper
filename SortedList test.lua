local SortedList = require "SortedList"
return function(s)
	local print = print
	if "silent"==s then print = function() end end

	local l1 = SortedList()
	local testTable = {a = 11, b = 22, c = 33, [1] = 12, [2] = 23, [3] = 34,[false] = "no", [true] = "yes",[{}]="",[{}]=""} -- same as expected out

	for k,v in pairs(testTable) do l1:Insert(k) end

	for i=0,12 do print(l1:Next(i)) end


end