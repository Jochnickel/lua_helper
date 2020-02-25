local length = function(t)
	if 'table'~=type(t) then error("Is not a table", 2) end
	local out = 0
	local iter = next(t)
	while nil~=iter do
		out = out + 1
		iter = next(t,iter)
	end
	return out
end

return length