local function new(arg)
  local foregroundTable = {}
  local _tostr = string.format('%s',foregroundTable)
  local func = function() print('hello world') end
  local desc = 'dummy function description'
  local protectMetatable = true
  local disableNewIndex = true
  local backgroundTable = {dummy = 1}
  
  assert('function'==type(func))
  assert('string'==type(desc))
  
  local mt = {}
  mt.__call = func
  mt.__index = backgroundTable
  mt.__metatable = protectMetatable and false or nil
  mt.__newindex = disableNewIndex and function() error('Cant add new values' ,2) end or nil
  mt.__tostring = function()
    return string.format('functional %s; %s', _tostr, desc)
  end
  setmetatable(foregroundTable,mt)
  return foregroundTable
end

local a = new()
a()
print(a.dummy)
print(a)
return new