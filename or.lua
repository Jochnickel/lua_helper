return function (a,...)
  for _,b in pairs{...} do
    a = a or b
  end
  return a
end
