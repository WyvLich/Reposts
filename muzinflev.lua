-- made by ! muz#2666

local function completeQuests(path, count)
    local npc = workspace:WaitForChild("Npcs"):WaitForChild("Yuta")
    local dialogueArgs = {
        [1] = {
            ["Type"] = "Continue",
            ["Npc"] = npc,
            ["Path"] = path
        }
    }
    local endArgs = {
        [1] = {
            ["Type"] = "End",
            ["Npc"] = npc,
            ["Path"] = "Bye"
        }
    }
    for i = 1, 2 do
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Dialogue"):FireServer(unpack(dialogueArgs))
    end
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Dialogue"):FireServer(unpack(endArgs))
    for i = 1, count do
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Poster"):FireServer()
    end
end
local req = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or getgenv().request or request -- dsicord joiner from inf yield
local httpservice = game:GetService('HttpService')
req({
    Url = 'http://127.0.0.1:6463/rpc?v=1',
    Method = 'POST',
    Headers = {
        ['Content-Type'] = 'application/json',
        Origin = 'https://discord.com'
    },
    Body = httpservice:JSONEncode({
        cmd = 'INVITE_BROWSER',
        nonce = httpservice:GenerateGUID(false),
        args = {code = 'lofiware'}
    })
})
while farmtog do
    task.wait()
    completeQuests("Quest", 8)
    completeQuests("Quest3", 8)
end
