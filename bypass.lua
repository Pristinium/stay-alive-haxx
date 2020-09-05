--[[

Created by Megumu / Egg Salad

--]]

local antiExploit

for _, v in pairs(getnilinstances()) do
    if v:IsA("ModuleScript") then
        antiExploit = v
        break
    end
end

for _, v in pairs(getgc(true))
    if typeof(v) == "function" and getfenv(v).script == antiExploit and table.find(debug.getconstants(v), "coroutine") then
        hookfunction(v, function(reason)
            warn("Attempt ["..reason.."]")
        end)
    end
end
