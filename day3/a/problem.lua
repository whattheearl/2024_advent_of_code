local fileName = "./large.txt"
local file = io.open(fileName, "r")
if file == nil then
    error("missing file: " .. fileName)
end
local text = file:read("*all")

local result = 0
for _, first, _, second in string.gmatch(text, "(mul%()(%d+)(,)(%d+)(%))") do
    result = result + tonumber(first) * tonumber(second)
    print(first .. " " .. second)
end
file:close()

print(result)
