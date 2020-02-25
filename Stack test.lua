local Stack = require "Stack"
return function(s)
	local print = print
	if "silent"==s then print = function() end end

	local l1 = Stack()
	l1:Push(4,124,23,1214,6434,345234,12)
	print(l1:Peek())
	repeat
		local iter = l1:Pop()
		print(iter)
	until (not iter)
end