return function() -- constructor
	local t = {}
	return {
		Push = function (self,...)
			for k,v in pairs({...}) do
				table.insert(t,v)
			end
		end,
		Pop = function (self)
			return table.remove(t)
		end,
		Peek = function (self)
			return t[#t]
		end
	}
end