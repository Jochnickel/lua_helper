local sc = function(t)
	local out = {}
	for k,v in pairs(t) do
		out[k] = v
	end
	return out
end

return sc