coin = {
tile = 32,
x = 0,
y = 0,

}


coins= {}

function coin:load()

	coin.x = math.random(0, love.graphics.getWidth() - player.tile)
	coin.y = math.random(0, love.graphics.getHeight() - player.tile)


end

function coin:update()
	
end

function coin:draw()
	love.graphics.setColor(0.8, 0.9, 0, 1)
	love.graphics.rectangle("fill", coin.x, coin.y, coin.tile, coin.tile)

end
