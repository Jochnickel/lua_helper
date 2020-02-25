local dc = require 'table.deepcopy'
return function(s)
	local print = print
	if "silent"==s then print = function() end end
	local jj = {}
	jj.eva = {}
	jj.judy = {}
	jj.eva.judy = jj.judy
	jj.aron = {jj = jj}
	-- dp(jj)
	-- for k,v in pairs(G) do print(G,k,v) end
end