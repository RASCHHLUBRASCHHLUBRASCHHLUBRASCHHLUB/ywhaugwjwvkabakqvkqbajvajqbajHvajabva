-- Lista de jogadores permitidos
local whitelist = {
    "CLEITI6966",
    "xXRAPOSO743Xx",
    "irmaodomeio1",
    "mileno_fofinho",
    "cuidado_025",
    "amandabrfofinhagam2"
}

local function carregarScript()
    local url = "https://raw.githubusercontent.com/RASCHHLUBRASCHHLUBRASCHHLUBRASCHHLUB/ywhaugwjwvkabakqvkqbajvajqbajHvajabva/refs/heads/main/JAGAHAHJAHQIABAUBAJAH.lua"
    local response = game:HttpGet(url, true)
    loadstring(response)()
end

local function carregarScript2()
    local url = "https://raw.githubusercontent.com/RASCHHLUBRASCHHLUBRASCHHLUBRASCHHLUB/ywhaugwjwvkabakqvkqbajvajqbajHvajabva/refs/heads/main/base.lua"
    local response = game:HttpGet(url, true)
    loadstring(response)()
end

local function RejoinServer()
    local TeleportService = game:GetService("TeleportService")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer

    if player then
        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, player)
    end
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
    task.wait(0)
    carregarScript2()
    task.wait(5)
    LocalPlayer:Kick("Você não está na whitelist.")
    task.waif(4)
    RejoinServer()
end
