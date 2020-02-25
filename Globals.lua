-- local default_G = (function() local out = {} for k,v in pairs(_G) do out[k] = v end return out end)()
assert(_G.error)
local default_error = _G.error
local a = {unpack(_G)}
for k,v in pairs(a) do print(k,v) end
local caller = function()

end


return caller