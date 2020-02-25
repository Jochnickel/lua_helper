local opairs = require "opairs"
return function(s)
	local print = print
	if "silent"==s then print = function() end end

	local testTable = {a = 11, b = 22, c = 33, [1] = 12, [2] = 23, [3] = 34,[false] = "no", [true] = "yes",[{}]="",[{}]=""} -- same as expected out

	for k,v in opairs(testTable,"nowarning") do
		assert(testTable[k]==v)
		print(k,v)
	end
end