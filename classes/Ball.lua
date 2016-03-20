class.Ball()

function Ball:_init(speedY)
	self.x = love.graphics.getWidth()/2
	self.y = love.graphics.getWidth()/2
	self.speedX = 250
	self.speedY = speedY
	self.radius = 10
	self.direct = math.random(2)
end

function Ball:mover(dt)
	if self.direct == 1 then
		self.x = self.x + (self.speedX*dt)
	elseif self.direct == 2 then
		self.x = self.x - (self.speedX*dt)
	end

		self.y = self.y + (self.speedY*dt)
end
