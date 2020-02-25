-- -- example usage and defaults

-- local C1 = Class(function(self)
-- 	local dummy1 = dummy1
-- 	self.GetVal1 = function(self)
-- 	return dummy1
-- 	end
-- 	self.SetVal1 = function(self,v)
-- 	dummy1 = v
-- 	end
-- end)

-- local C2 = Class{
-- 	constructor = function(self,a)
-- 	self.a = a
-- 	end,
-- 	writeableClass = false,
-- 	leakMetatable = false,
-- 	readonlyObject = false,
-- }
local function findArg(o,minLen,...)
	for _,str in pairs{...} do
		while str:len()>=minLen do
			if o[str] then return o[str] end
			str = str:sub(1,-2)
		end
	end
end

-- print(findArg( {oko = 20, eko = 12}, "asdko", "kodfok", "ekoajeif", "thersf" )) -- prints 12

local newClass = function(arg)
	local argIsntTable = 'table'~=type(arg)
	local customConst = argIsntTable and arg
		or findArg(arg,1,'constructor')
	local customConstSelfable = argIsntTable and -- false or
		findArg(arg,1,'selfableConstructor')
	local writeableClass = argIsntTable and -- false or
		findArg(arg,1,'writeableClass','writableClass','writeClass','wClass')
	local readonlyObject = argIsntTable and -- false or
		findArg(arg,1,'readonlyObject','readObject','rObject')
	
	
end

return newClass