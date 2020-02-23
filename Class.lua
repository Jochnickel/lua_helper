-- example usage and defaults
-- local C1 = Class(function(self)
--   local dummy1 = dummy1
--   self.GetVal1 = function(self)
--     return dummy1
--   end
--   self.SetVal1 = function(self,v)
--     dummy1 = v
--   end
-- end)

-- local C2 = Class{
--   constructor = function(self,a)
--     self.a = a
--   end,
--   
-- }


local new = function(arg)
  local argIsntTable = 'table'==type(arg)
  local constr = argIsntTable and arg or arg.constructor or arg.constr or arg.const or arg.const
  local hiddenTable = {}
  
  
end

return new