display.setStatusBar(display.HiddenStatusBar);

_w = display.contentWidth;
_h = display.contentHeight;

local botao = display.newRect(0,0, _w/2, _h/2);
botao:setFillColor(0,0,0);
botao.anchorX = 0;
botao.anchorY = 0;

local botao1 = display.newRect(_w/2,0, _w/2, _h/2);
botao1:setFillColor(0,0,0);
botao1.anchorX = 0;
botao1.anchorY = 0;

local botao2 = display.newRect(0,_h/2, _w/2, _h/2);
botao2:setFillColor(0,0,0);
botao2.anchorX = 0;
botao2.anchorY = 0;

local botao3 = display.newRect(_w/2,_h/2, _w/2, _h/2);
botao3:setFillColor(0,0,0);
botao3.anchorX = 0;
botao3.anchorY = 0;

local player = display.newCircle(_w/2,_h/2, 30);
player:setFillColor(0,0,1);
player.move = false;
player.move2 = false;
player.move3 = false;
player.move4 = false;

local function showFrame(ev)
    if(player.move == true)then
        player.x = player.x + 1;
        player.y = player.y - 1;        
    end

    if(player.move2 == true)then
       player.x = player.x - 1;    
       player.y = player.y + 1;      
    end

    if(player.move3 == true)then
        player.x = player.x - 1;
        player.y = player.y - 1;        
    end
    
    if(player.move4 == true)then
        player.x = player.x + 1;
        player.y = player.y + 1;        
    end   
end


function touchButton(ev)
      if(ev.phase == "began")then
          player.move = true;
      elseif (ev.phase == "ended") then
          player.move = false
      end
end

function touchButton1(ev)
    if(ev.phase == "began")then
        player.move2 = true;
    elseif (ev.phase == "ended") then
        player.move2 = false
    end
end

function touchButton2(ev)
    if(ev.phase == "began")then
        player.move3 = true;
    elseif (ev.phase == "ended") then
        player.move3 = false
    end
end

function touchButton3(ev)
    if(ev.phase == "began")then
        player.move4 = true;
    elseif (ev.phase == "ended") then
        player.move4 = false
    end
end

Runtime:addEventListener("enterFrame", showFrame);

botao1:addEventListener("touch", touchButton);
botao:addEventListener("touch", touchButton2);
botao2:addEventListener("touch", touchButton1);
botao3:addEventListener("touch", touchButton3);