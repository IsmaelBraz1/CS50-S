push = require 'push'

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720
VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243


function love.load()
    -- use a filtragem do vizinho mais próximo no aumento e na redução para evitar o desfoque do texto
    -- e gráficos; tente remover esta função para ver a diferença!
    love.graphics.setDefaultFilter('nearest', 'nearest')
    -- inicializar nossa resolução virtual, que será renderizada dentro de nosso
    -- janela real, não importando suas dimensões; substitui nossa chamada love.window.setMode
    -- do último exemplo
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

function love.keypressed(Key)
    if kay == 'escape' then
        love.event.quit()
    end
    
end

function love.draw()
    --comeca a renderizar em resolução virtual
    push:apply('start')
    love.graphics.printf("Hello Pong", 0,  VIRTUAL_HEIGHT / 2 - 6, VIRTUAL_WIDTH, 'center')
    push:apply('end')
   
end