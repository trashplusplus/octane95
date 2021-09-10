enemy = {
x = 0,
y = 0,
tile = 64,	
xspeed = 1,
yspeed = 1,
score = 0,


}



function enemy:load()
	
	math.randomseed(os.time())

	win_w = love.graphics.getWidth()
	win_h = love.graphics.getHeight()
	
	enemy.x = math.random(0, 512 - enemy.tile)
	enemy.y = math.random(0, 512 - enemy.tile)
		

	
	

end

function enemy:update(dt)

		enemy.x = enemy.x - enemy.xspeed
		enemy.y = enemy.y + enemy.yspeed
	

		
		if (enemy.x + enemy.tile >= win_w) or (enemy.x <= 0) then
			enemy.xspeed = enemy.xspeed * -1
			enemy.score = enemy.score + 1
		elseif (enemy.y + enemy.tile >= win_h) or (enemy.y <= 0) then
			enemy.yspeed = enemy.yspeed * -1
			enemy.score = enemy.score + 1
		end
		
		

end

function enemy:draw()
	
	love.graphics.setColor(0.4, 0.1, 0.2, 1)
	love.graphics.rectangle("fill", enemy.x, enemy.y, enemy.tile, enemy.tile)
	
	
end
