local WindUI = loadstring(game:HttpGet(
    "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"
))()

local Window = WindUI:CreateWindow({
    Title = "RD HUB",
    Icon = "house",
    Author = "RD777",
    Folder = "RDHub",

    Size = UDim2.fromOffset(580, 460),
    Transparent = true,
    Theme = "Crimson",
    Resizable = true,
    SideBarWidth = 200,

    Background = "",
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,

    User = {
        Enabled = true,
        Anonymous = true,

        Callback = function()
            print("RD HUB")
        end,
    },

    -- =========================
    -- SISTEMA DE KEY
    -- =========================

    KeySystem = {
        Key = {
            "1234",
            "5678"
        },

        Note = "RD HUB - Sistema de Key",

        Thumbnail = {
            Image = "rbxassetid://SEU_ID_DA_IMAGEM",
            Title = "RD HUB",
        },

        URL = "https://github.com/Footagesus/WindUI",

        -- false = pede a Key novamente ao executar
        SaveKey = false,
    },
})

-- =========================
-- MENU
-- =========================

local Inicio = Window:Tab({
    Title = "Início",
    Icon = "house",
})

local Funcoes = Window:Tab({
    Title = "Funções",
    Icon = "box",
})

local Config = Window:Tab({
    Title = "Configurações",
    Icon = "settings",
})

local Sobre = Window:Tab({
    Title = "Sobre",
    Icon = "info",
})

Window:SelectTab(1)

-- =========================
-- INÍCIO
-- =========================

Inicio:Section({
    Title = "🔥 RD HUB",
})

Inicio:Paragraph({
    Title = "Bem-vindo ao RD HUB!",
    Desc = "Hub criado por RD777.",
})

Inicio:Button({
    Title = "Testar Hub",
    Desc = "Verificar se o RD HUB está funcionando.",
    Icon = "mouse-pointer-click",

    Callback = function()
        print("RD HUB funcionando!")

        WindUI:Notify({
            Title = "RD HUB",
            Content = "O hub está funcionando corretamente!",
            Duration = 3,
        })
    end,
})

Inicio:Button({
    Title = "Mensagem de boas-vindas",
    Desc = "Mostrar uma notificação.",
    Icon = "bell",

    Callback = function()
        WindUI:Notify({
            Title = "👋 Olá!",
            Content = "Obrigado por usar o RD HUB!",
            Duration = 4,
        })
    end,
})

Inicio:Section({
    Title = "Informações",
})

Inicio:Paragraph({
    Title = "Versão",
    Desc = "RD HUB • v1.0",
})

Inicio:Paragraph({
    Title = "Criador",
    Desc = "RD777",
})

-- =========================
-- FUNÇÕES
-- =========================

Funcoes:Section({
    Title = "⚡ Funções principais",
})

Funcoes:Toggle({
    Title = "Ativar função",
    Desc = "Exemplo de função do RD HUB.",
    Default = false,

    Callback = function(Value)
        print("Função:", Value)

        WindUI:Notify({
            Title = Value and "Função ativada" or "Função desativada",
            Content = Value and "A função foi ativada." or "A função foi desativada.",
            Duration = 2,
        })
    end,
})

Funcoes:Toggle({
    Title = "Modo rápido",
    Desc = "Exemplo de segunda configuração.",
    Default = false,

    Callback = function(Value)
        print("Modo rápido:", Value)
    end,
})

Funcoes:Section({
    Title = "Testes",
})

Funcoes:Button({
    Title = "Executar teste",
    Desc = "Executar um teste simples.",
    Icon = "play",

    Callback = function()
        WindUI:Notify({
            Title = "Teste concluído",
            Content = "O teste foi executado com sucesso!",
            Duration = 3,
        })
    end,
})

-- =========================
-- CONFIGURAÇÕES
-- =========================

Config:Section({
    Title = "⚙️ Geral",
})

Config:Toggle({
    Title = "Salvar configurações",
    Desc = "Salvar configurações do hub.",
    Default = true,

    Callback = function(Value)
        print("Salvar:", Value)
    end,
})

Config:Toggle({
    Title = "Notificações",
    Desc = "Ativar ou desativar notificações.",
    Default = true,

    Callback = function(Value)
        print("Notificações:", Value)
    end,
})

Config:Section({
    Title = "Interface",
})

Config:Button({
    Title = "Notificação de teste",
    Desc = "Testar o sistema de notificações.",
    Icon = "bell",

    Callback = function()
        WindUI:Notify({
            Title = "RD HUB",
            Content = "Notificação funcionando!",
            Duration = 3,
        })
    end,
})

-- =========================
-- SOBRE
-- =========================

Sobre:Section({
    Title = "🔥 RD HUB",
})

Sobre:Paragraph({
    Title = "RD777",
    Desc = "Criador do RD HUB.",
})

Sobre:Paragraph({
    Title = "Informações",
    Desc = "RD HUB • WindUI • Versão 1.0",
})

Sobre:Paragraph({
    Title = "Créditos",
    Desc = "Interface: RD777\nBiblioteca: WindUI",
})

-- =========================
-- INICIALIZAÇÃO
-- =========================

WindUI:Notify({
    Title = "🔥 RD HUB",
    Content = "Hub carregado com sucesso!",
    Duration = 4,
})
