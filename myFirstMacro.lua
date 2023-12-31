--[[ First macro in Lua --]]
--[[ Rewriting a automatical generated macro --]]
--[[ Selecting notes in Dorico--]]
--[[ still need to know how to determine notes coordinates --]]

function noteSelect(X,Y)
    local var1 = [[Edit.SelectAtPoint?X=]]
    local var2 = [[&Y=]]
    local var3 =[[&AddToSelection=0&BlockSelection=1&NextSelectionAtPoint=0&SelectionTriggerAction=0]]
    return var1..X..var2..Y..var3
end

local var = {}
local com = {}

for i = 1, 4 do
    var[i] = {}
    for j = 1,2 do
        var[i][j] = 0
    end
end

--[[ Coordinates, how does thes work ? --]]

var[1] = {158,185.5}
var[2] = {177.5,182.5}
var[3] = {196,179.5}
var[4] = {217,176.5}

local app=DoApp.DoApp() --[[ generated by macro --]]

for i= 1, 4 do
    com[i] = noteSelect(var[i][1],var[i][2])
    app:doCommand(com[i])   --[[ generated by macro --]]
end

print('Console message appears')
