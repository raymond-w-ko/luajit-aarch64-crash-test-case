local filename = "manifest-5.1"
local f = io.open(filename)
local x = f:read("*all")
loadstring(x, filename)
