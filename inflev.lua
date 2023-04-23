
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
