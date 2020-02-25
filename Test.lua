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