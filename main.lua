local composer =  require("composer")
local widget = require("widget")

local scene = composer.newScene()


require "Tabuleiro"
tabuleiro:gerar()
local myText = display.newText( "JOGO DA VEIA", display.contentWidth/2, -10, native.systemFont, 25 )
local linha1 = display.newLine(20, 100, 310, 100)
    linha1:setStrokeColor( 0, 1, 1, 1 )
    linha1.y = 110
    linha1.x = 15
    linha1.strokeWidth = 3

local linha2 = display.newLine(20, 100, 310, 100)
    linha2:setStrokeColor( 0, 1, 1, 1 )
    linha2.y = 210
    linha2.x = 15
    linha2.strokeWidth = 3

local linha3 = display.newLine(100, 20, 100, 310)
    linha3:setStrokeColor( 1, 1, 0, 1 )
    linha3.x = 110
    linha3.y = 15
    linha3.strokeWidth = 3

local linha4 = display.newLine(100, 20, 100, 310)
    linha4:setStrokeColor( 1, 1, 0, 1 )
    linha4.x = 210
    linha4.y = 15
    linha4.strokeWidth = 3


local n = 0;
local function botao11_fun(event)
    if event.phase == "began" and tabuleiro[1][1]== 1 then
        if n == 0 then
            tabuleiro[1][1] = "X"
            x = display.newLine(10, 10, 70, 70)
                x.strokeWidth = 3
                x.x = 30
                x.y = 30
            x2 = display.newLine(70, 10, 10, 70)
                x2.strokeWidth = 3
                x2.x = 90
                x2.y = 30
        n = 1
        tabuleiro:verificarGanhouX()
        else
            tabuleiro[1][1] = "O"
            o = display.newCircle(60, 60, 30 )
                o:setFillColor(1,0,0)
        n = 0
        tabuleiro:verificarGanhouO()
        end
    end
    tabuleiro:enpatou()
end

local function botao12_fun(event)
    if event.phase == "began" and tabuleiro[1][2] == 1 then
        if n == 0 then
            tabuleiro[1][2] = "X"
            x = display.newLine(10, 10, 70, 70)
                x.strokeWidth = 3
                x.x = 130
                x.y = 30
            x2 = display.newLine(70, 10, 10, 70)
                x2.strokeWidth = 3
                x2.x = 190
                x2.y = 30
        n =1
        tabuleiro:verificarGanhouX()
        else
            tabuleiro[1][2] = "O"
            o = display.newCircle(160, 60, 30 )
                o:setFillColor(1,0,0)
        n = 0
        tabuleiro:verificarGanhouO()
        end
    end
    tabuleiro:enpatou()
end

local function botao13_fun(event)
    if event.phase == "began" and tabuleiro[1][3] == 1 then
        if n == 0 then
            tabuleiro[1][3] = "X"
            x = display.newLine(10, 10, 70, 70)
                x.strokeWidth = 3
                x.x = 230
                x.y = 30
            x2 = display.newLine(70, 10, 10, 70)
                x2.strokeWidth = 3
                x2.x = 290
                x2.y = 30
        n =1
        tabuleiro:verificarGanhouX()
        else
            tabuleiro[1][3] = "O"
            o = display.newCircle(260, 60, 30 )
                o:setFillColor(1,0,0)
        n = 0
        tabuleiro:verificarGanhouO()
        end
    end
    tabuleiro:enpatou()
end
local function botao21_fun(event)
    if event.phase == "began" and tabuleiro[2][1] == 1 then
        if n == 0 then
            tabuleiro[2][1] = "X"
            x = display.newLine(10, 10, 70, 70)
                x.strokeWidth = 3
                x.x = 30
                x.y = 130
            x2 = display.newLine(70, 10, 10, 70)
                x2.strokeWidth = 3
                x2.x = 90
                x2.y = 130
        n =1
        tabuleiro:verificarGanhouX()
        else
            tabuleiro[2][1] = "O"
            o = display.newCircle(60, 160, 30 )
                o:setFillColor(1,0,0)
        n = 0
        tabuleiro:verificarGanhouO()
        end
    end
    tabuleiro:enpatou()
end
local function botao22_fun(event)
    if event.phase == "began" and tabuleiro[2][2] == 1 then
        if n == 0 then
            tabuleiro[2][2] = "X"
            x = display.newLine(10, 10, 70, 70)
                x.strokeWidth = 3
                x.x = 130
                x.y = 130
            x2 = display.newLine(70, 10, 10, 70)
                x2.strokeWidth = 3
                x2.x = 190
                x2.y = 130
        n =1
        tabuleiro:verificarGanhouX()
        else
            tabuleiro[2][2] = "O"
            o = display.newCircle(160, 160, 30 )
                o:setFillColor(1,0,0)
        n = 0
        tabuleiro:verificarGanhouO()
        end

	end
    tabuleiro:enpatou()
end
local function botao23_fun(event)
    if event.phase == "began" and tabuleiro[2][3] == 1 then
        if n == 0 then
            tabuleiro[2][3] = "X"
            x = display.newLine(10, 10, 70, 70)
                x.strokeWidth = 3
                x.x = 230
                x.y = 130
            x2 = display.newLine(70, 10, 10, 70)
                x2.strokeWidth = 3
                x2.x = 290
                x2.y = 130
        n =1
        tabuleiro:verificarGanhouX()
        else
            tabuleiro[2][3] = "O"
            o = display.newCircle(260, 160, 30 )
                o:setFillColor(1,0,0)
        n = 0
        tabuleiro:verificarGanhouO()
        end
    end
    tabuleiro:enpatou()
end
local function botao31_fun(event)
    if event.phase == "began" and tabuleiro[3][1] == 1 then
        if n == 0 then
            tabuleiro[3][1] = "X"
            x = display.newLine(10, 10, 70, 70)
                x.strokeWidth = 3
                x.x = 30
                x.y = 230
            x2 = display.newLine(70, 10, 10, 70)
                x2.strokeWidth = 3
                x2.x = 90
                x2.y = 230
        n =1
        tabuleiro:verificarGanhouX()
        else
            tabuleiro[3][1] = "O"
            o = display.newCircle(60, 260, 30 )
                o:setFillColor(1,0,0)
        n = 0
        tabuleiro:verificarGanhouO()
        end
    end
    tabuleiro:enpatou()
end
local function botao32_fun(event)
    if event.phase == "began" and tabuleiro[3][2] == 1 then
        if n == 0 then
            tabuleiro[3][2] = "X"
            x = display.newLine(10, 10, 70, 70)
                x.strokeWidth = 3
                x.x = 130
                x.y = 230
            x2 = display.newLine(70, 10, 10, 70)
                x2.strokeWidth = 3
                x2.x = 190
                x2.y = 230
        n =1
        tabuleiro:verificarGanhouX()
        else
            tabuleiro[3][2] = "O"
            o = display.newCircle(160, 260, 30 )
                o:setFillColor(1,0,0)
        n = 0
        tabuleiro:verificarGanhouO()
        end
    end
    tabuleiro:enpatou()
end
local function botao33_fun(event)
    if event.phase == "began" and tabuleiro[3][3] == 1 then
        if n == 0 then
            tabuleiro[3][3] = "X"
            x = display.newLine(10, 10, 70, 70)
                x.strokeWidth = 3
                x.x = 230
                x.y = 230
            x2 = display.newLine(70, 10, 10, 70)
                x2.strokeWidth = 3
                x2.x = 290
                x2.y = 230
        n =1
        tabuleiro:verificarGanhouX()
        else
            tabuleiro[3][3] = "O"
            o = display.newCircle(260, 260, 30 )
                o:setFillColor(1,0,0)
        tabuleiro:verificarGanhouO()
        end
    end
    tabuleiro:enpatou()
end
botao11 = display.newRect( 60,60,90,90)
    botao11:setFillColor(0,0,0)
    botao11:addEventListener("touch", botao11_fun)

botao12 = display.newRect( 160,60,90,90)
    botao12:setFillColor(0,0,0)
    botao12:addEventListener("touch", botao12_fun)

botao13 = display.newRect( 260,60,90,90)
    botao13:setFillColor(0,0,0)
    botao13:addEventListener("touch", botao13_fun)

botao21 = display.newRect( 60,160,90,90)
    botao21:setFillColor(0,0,0)
    botao21:addEventListener("touch", botao21_fun)

botao22 = display.newRect( 160,160,90,90)
    botao22:setFillColor(0,0,0)
    botao22:addEventListener("touch", botao22_fun)

botao23 = display.newRect( 260,160,90,90)
    botao23:setFillColor(0,0,0)
    botao23:addEventListener("touch", botao23_fun)

botao31 = display.newRect( 60,260,90,90)
    botao31:setFillColor(0,0,0)
    botao31:addEventListener("touch", botao31_fun)

botao32 = display.newRect( 160,260,90,90)
    botao32:setFillColor(0,0,0)
    botao32:addEventListener("touch", botao32_fun)

botao33 = display.newRect( 260,260,90,90)
    botao33:setFillColor(0,0,0)
    botao33:addEventListener("touch", botao33_fun)

