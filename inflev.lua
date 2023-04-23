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
while teal do wait()
    local args = {
    [1] = {
        ["Type"] = "Continue",
        ["Npc"] = workspace.Npcs.Yuta,
        ["Path"] = "Quest3"
    }
}

game:GetService("ReplicatedStorage").Events.Dialogue:FireServer(unpack(args))
game:GetService("ReplicatedStorage").Events.Poster:FireServer()
end
