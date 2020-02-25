require "Class"
return function(s)
	local print = print
	if "silent"==s then print = function() end end
end