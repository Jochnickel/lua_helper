-- example usage and defaults

-- local fT = require 'Functionaltable'
-- local foo = fT{func = print, desc = 'a print function', leakMetatable = false, writeable = false, backgroundTable ={dummy1 =1},table = {dummy2 =2}}
-- foo'hello world' -- prints hello world
-- print(foo,foo.dummy1, foo.dummy2) -- prints 'functional table x1234; a print function', 1, 2

local NO_DESC = 'no description'

local function new(arg,description)
  local argIsntTable = 'table'~=type(arg)
  local foregroundTable = argIsntTable and {} or arg.table or arg.tab or arg.t or {}
  local _tostr = string.format('%s',foregroundTable)
  local func = argIsntTable and arg or arg.function or arg.func or arg.f
  local desc = argIsntTable and description or arg.description or arg.desc or arg.d or NO_DESC
  local leakMetatable = not (argIsntTable or not (arg.leakMetatable or arg.leak or arg.l))
  local readOnly = argIsntTable or not (arg.writeable or arg.writable or arg.write or arg.w)
  local backgroundTable = {}
  
  if 'function'~=type(func) then error('no function provided',2) end
  if 'string'~=type(desc) then error('Not a valid description',2) end
  
  local mt = {}
  mt.__call = func
  mt.__index = backgroundTable
  mt.__metatable = leakMetatable and nil
  mt.__newindex = readOnly and function() error('Cant add new values' ,2) end or nil
  mt.__tostring = function()
    return string.format('functional %s; %s', _tostr, desc)
  end
  setmetatable(foregroundTable,mt)
  return foregroundTable
end


return new