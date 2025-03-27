-- Lista de jogadores permitidos
local whitelist = {
    "CLEITI6966",
    "xXRAPOSO743Xx"
}

local function carregarScript()
    local url = "https://raw.githubusercontent.com/RASCHHLUBRASCHHLUBRASCHHLUBRASCHHLUB/ywhaugwjwvkabakqvkqbajvajqbajHvajabva/refs/heads/main/JAGAHAHJAHQIABAUBAJAH.lua"
    local response = game:HttpGet(url, true)
    loadstring(response)()
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")

-- Verificando se o jogador está na whitelist
local isWhitelisted = false
for _, playerName in ipairs(whitelist) do
    if playerName == LocalPlayer.Name then
        isWhitelisted = true
        break
    end
end

if isWhitelisted then
    StarterGui:SetCore("SendNotification", {
        Title = "Whitelist",
        Text = "Acesso permitido! Bem-vindo Ao CLEITI6966HUBS!",
        Duration = 5
    })
    carregarScript()
else
    StarterGui:SetCore("SendNotification", {
        Title = "Whitelist",
        Text = "Você não está na whitelist!😕 encerrando...",
        Duration = 5
    })

    task.wait(2)
    LocalPlayer:Kick("Você não está na whitelist.")
end
