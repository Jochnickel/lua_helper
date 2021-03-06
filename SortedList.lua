local new = function()
	local list = {}
	local iter = 0
	return {
		Insert = function(self,value)
			if nil==value then error("Must insert non-nil value",2) end
			local typeV = type(value)
			local comparable = 'string'==typeV or 'number'==typeV
			local i = 1
			while nil~=list[i] and typeV~=type(list[i]) do
				i = i + 1
			end
			while typeV==type(list[i]) and comparable and value>list[i] do
				i = i + 1
			end
			table.insert(list,i,value)
		end,
		Next = function(self,index)
			iter = ('number'==type(index) and index+1)
				or (nil~=list[iter] and iter+1)
				or 1
			return list[iter], iter
		end
	}

end

return new