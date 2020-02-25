local fT = require 'FunctionalTable'
return function(s)
	local print = print
	if "silent"==s then print = function() end end
	local foo = fT{
		func = print,
		desc = 'a print function',
		leakMetatable = false,
		writeable = false,
		backgroundTable ={dummy1 =1},
		table = {dummy2 =2},
		selfable = false
	}
	foo('hello world') -- prints hello world
	print(foo,foo.dummy1, foo.dummy2) -- prints 'functional table x1234; a print function', 1, 2
end