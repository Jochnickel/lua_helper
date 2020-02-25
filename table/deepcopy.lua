local dc = function(t)
	if 'table'~=type(t) then error('table expected, got '..type(t),2) end
	
	local out = {}

	local alreadySeen = {}

	local fromCopy = {}
	local toCopy = {}

	local from = t
	local to = out

	while (from) do
		alreadySeen[from] = to
		for k,v in pairs(from) do
			if alreadySeen[v] then
				to[k] = alreadySeen[v]
			elseif 'table'==type(v) then
				to[k] = {}
				table.insert(fromCopy,v)
				table.insert(toCopy,to[k])
			else
				to[k] = v
			end
		end
		to = table.remove(toCopy)
		from = table.remove(fromCopy)
	end
	return out
end

return dc