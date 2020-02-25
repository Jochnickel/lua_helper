local p = _G.print
_G.print = function(...)
	local x = {...}
	table.insert(x,debug.traceback("",2))
	p(unpack(x))
end
local version = (1/0==1/'-0') and 5.3
	or (function() local a=function() return function() end end return a()==a() end)() and 5.2
	or 1.0

if version>=5.2 then
	require "FunctionalTable test" "silent"
end
require "Globals test" "silent"
require "Class test" "silent"
require "Stack test" "silent"
require "table.deepcopy test" "silent"
require "table.length test" "silent"
require "opairs test" "silent"
require "SortedList test" "silent"
require "Args"
require "print"
_G.print = p