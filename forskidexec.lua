loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/vapevoidware/main/NewMainScript.lua", true))()

local executor = "Unknown"
local HWID = tostring(game:GetService("RbxAnalyticsService"):GetClientId())

local executors = {"Scythex"}

for i,v in pairs(executors) do
    if string.find(string.lower(identifyexecutor()), executors[i]) then
        executor = executors[i]
        break
    end
end

local headers = {
    ["Content-type"] = "application/json",
    ["Authorization"] = "Bearer nebulaisamonkey"
}
local data = {["client_id"] = tostring(HWID), ["executor"] = tostring(executor)}
local final_data = game:GetService("HttpService"):JSONEncode(data)
local url = "https://vapevoidware.pythonanywhere.com/data/add"
local a = request({
    Url = url,
    Method = 'POST',
    Headers = headers,
    Body = final_data
})
