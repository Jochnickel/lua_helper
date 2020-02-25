return function(str,...)
	if 'string'~=type(str) then error('string expected',2) end
	print(str:format(...))
end