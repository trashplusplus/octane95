require('player')
require('menu')
require('game')
require('enemy')
require('collision')
require('coin')


function love.load()

	min_dt = 1/60;
   	next_time = love.timer.getTime();
	

	math.randomseed(os.time())
	
	menu:load()
	player:load()
	enemy:load()
	coin:load()
	gamestate = "menu"
	
end

--tes
function love.update(dt)
	next_time = next_time + min_dt
	menu:update()
	state_check(gamestate)
		


end

function love.draw()
	

	state_check(gamestate)
	game:update()

end

function game_over()
	if collision(player.x, player.y, player.tile, player.tile, enemy.x, enemy.y, enemy.tile, enemy.tile) == false then
	
	else
		player:load()
	coin:load()
	enemy:load()
	
	player.score = 0
	gamestate = "menu"
	end
end

function state_check(gamestate)
	
	if gamestate == "menu" then
		menu:draw()
	elseif gamestate == "game" then
		game:draw()
		coin:draw()		
		player:update()
		player:draw()		
		enemy:update()
		enemy:draw()
		
		if collision(player.x, player.y, player.tile, player.tile, enemy.x, enemy.y, enemy.tile, enemy.tile) then
			game_over()
		elseif collision(player.x, player.y, player.tile, player.tile, coin.x, coin.y, coin.tile, coin.tile) then
			coin:load()
			player.score = player.score + 1
		end	
	end
	
end

function love.keypressed(key)
	state_check(gamestate)
	if key == "return" then
		gamestate = "game"
	end
	
	if gamestate == "game" then
		if key == "space" then
			player.xspeed = player.xspeed + 1.5
		end
	end
	
end

function love.joystickpressed(joyStick, btn)
	state_check(gamestate)
	if joyStick:isGamepadDown("a") then
		gamestate = "game"
	elseif joyStick:isGamepadDown("start") then
		love.event.quit()
	end
	
	if gamestate == "game" then
		if joyStick:isGamepadDown("a") then
			player.xspeed = player.xspeed + 1.5
		end
	end	
end

