local function new(arg)
  local argIsntTable = 'table'~=type(arg)
  local foregroundTable = {}
  local _tostr = string.format('%s',foregroundTable)
  local func = argIsntTable and arg or arg.function or arg.func or arg.f
  local desc = argIsntTable and 'No description' or arg.description or arg.desc or arg.d
  local protectMetatable = argIsntTable or not (arg.leakMetatable or arg.leak or arg.l)
  local readOnly = argIsntTable or not (arg.writeable or arg.writable or arg.write or arg.w)
  local backgroundTable = {}
  
  if 'function'~=type(func) then error('no function provided',2) end
  if 'string'~=type(desc) then error('Not a valid description',2) end
  
  local mt = {}
  mt.__call = func
  mt.__index = backgroundTable
  mt.__metatable = protectMetatable and false or nil
  mt.__newindex = readOnly and function() error('Cant add new values' ,2) end or nil
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