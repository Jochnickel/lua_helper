local function _dp(t,prefix,aS)
	aS[t] = prefix
	prefix = prefix..'.'
	for k1,v1 in pairs(t) do
		local pre = prefix..k1
		print(string.format("%s %30s",pre,tostring(v1)))
		if aS[v1] then
			print(pre..' = '..aS[v1])
		else
			_dp(v1,pre,aS)
		end
	end
end

local dp = function(t)
	if 'table'~=type(t) then error('table expected, got '..type(t),2) end
	local alreadySeen = {}
	_dp(t,"[root]",alreadySeen)
end

return dp