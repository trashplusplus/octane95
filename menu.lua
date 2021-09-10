menu = {}

function menu:load()
	
	pixel_font = love.graphics.newFont("res/fonts/Pixel.ttf", 25)	
	logo_text = "octane95"

	press_text = "Press Enter to start"
	press_textW = pixel_font:getWidth(logo_text)
	press_textH = pixel_font:getHeight(logo_text)
	press_text_offsetX = pixel_font:getWidth(press_text) / 2
	press_text_offsetY = pixel_font:getHeight(press_text) / 2

	logo_text_offsetX = pixel_font:getWidth(logo_text) / 2
	logo_text_offsetY = pixel_font:getHeight(logo_text) / 2

	T = 120 --period
	T2 = 80
	sin_value = 0
	sin_value2 = 0

	
	
end

function menu:update()

	sin_value = sin_value + (math.pi * 2) / T
	sin_value2 = sin_value2 + (math.pi * 2 / T2)
	sin2 = math.sin(sin_value2)
	sin = math.sin(sin_value)

end

function menu:draw()
	--[[
		love.graphics.setColor(1, 1, 1, 1)
	love.graphics.print(logo_text, love.graphics.getWidth() / 2 + 15, love.graphics.getHeight() / 4, sin2 / 5, 1, 1, logo_text_offsetX, 		logo_text_offsetY)
	--shadow
		love.graphics.setColor(0.1, 0, 0, 1)
       love.graphics.print(logo_text, love.graphics.getWidth() / 2 + 15, love.graphics.getHeight() / 4 - 4, sin2 / 5, 1, 1, logo_text_offsetX, logo_text_offsetY)
	]]--

     love.graphics.setBackgroundColor(0.7, 0.2, 0.1, 1)
	love.graphics.setFont(pixel_font)
	love.graphics.setColor(0.1, 0, 0, 1)
	love.graphics.print(press_text, love.graphics.getWidth() / 2 + 15, love.graphics.getHeight() / 2, sin / 5, 1, 1, press_text_offsetX, 		logo_text_offsetY)
	--shadow
		love.graphics.setColor(1, 1, 1, 1)
       love.graphics.print(press_text, love.graphics.getWidth() / 2 + 15, love.graphics.getHeight() / 2 - 4, sin / 5, 1, 1, press_text_offsetX,logo_text_offsetY)
end
