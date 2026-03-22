-- GUI Base
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 200, 0, 120)
Frame.Position = UDim2.new(0.5, -100, 0.5, -60)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)

local FrameCorner = Instance.new("UICorner", Frame)

UIListLayout.Parent = Frame
UIListLayout.Padding = UDim.new(0, 10)
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

-- Função para criar botão
local function criarBotao(texto, cor)
    local Botao = Instance.new("TextButton")
    Botao.Size = UDim2.new(0, 160, 0, 40)
    Botao.BackgroundColor3 = cor
    Botao.Text = texto
    Botao.TextColor3 = Color3.fromRGB(0, 0, 0)
    Botao.Font = Enum.Font.Gotham
    Botao.TextSize = 16

    local Corner = Instance.new("UICorner")
    Corner.Parent = Botao

    Botao.Parent = Frame
    return Botao
end

-- Botões
local btnIntro = criarBotao("Load Intro", Color3.fromRGB(0, 170, 0))
local btnNoIntro = criarBotao("No Intro", Color3.fromRGB(170, 0, 0))

-- Scripts
local script1 = "https://raw.githubusercontent.com/dreamy9x9x/DarkLibrary/refs/heads/main/metodos/in.lua"
local script2 = "https://raw.githubusercontent.com/dreamy9x9x/source/refs/heads/main/obfuscated_script-1774131715428.lua.txt"

-- Ações
btnIntro.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet(script1))()
    task.wait(1)
    loadstring(game:HttpGet(script2))() 
ScreenGui:Destroy()
end)

btnNoIntro.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet(script2))()
ScreenGui:Destroy()
end)
