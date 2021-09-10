player = {
x = 0,
y = 0,
tile = 64,	
xspeed = 1,
yspeed = 1,
score = 0,


}



function player:load()
	
	math.randomseed(os.time())

	win_w = love.graphics.getWidth()
	win_h = love.graphics.getHeight()
	
	player.x = math.random(0, win_w / 2)
	player.y = math.random(0, win_h / 2)
		
	player.xspeed = 1
	player.yspeed = 1

	
	

end

function player:update(dt)

		player.x = player.x + player.xspeed
		player.y = player.y + player.yspeed
	

		
		if (player.x + player.tile >= win_w) or (player.x <= 0) then
			player.xspeed = player.xspeed * -1
		elseif (player.y + player.tile >= win_h) or (player.y <= 0) then
			player.yspeed = player.yspeed * -1
		end
		
		

end

function player:draw()
	
	love.graphics.setColor(0, 0, 0, 1)
	love.graphics.print("Score: " .. player.score, 14, 18)
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.print("Score: " .. player.score, 14, 14)
	
	love.graphics.setColor(0.1, 0.5, 0.2, 1)
	love.graphics.rectangle("fill", player.x, player.y, player.tile, player.tile)
	
	
end
