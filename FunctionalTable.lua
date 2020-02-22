
return function(arg)
  local new = {}
  local func = function() end
  local desc = 'dummy function description'
  local protectMetatable = true
  local allowNewIndex = true
  setmetatable(new,{
    __metatable = protectMetatable or nil,
    __newindex = allowNewIndex and nil or false,
    
  })
  return new
end