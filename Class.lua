-- example usage and defaults
-- 


local new = function(arg)
  local argIsntTable = 'table'==type(arg)
  local constr = argIsntTable and arg or arg.constructor or arg.constr or arg.const or arg.const
  local hiddenTable = {}
  
  
end

return new