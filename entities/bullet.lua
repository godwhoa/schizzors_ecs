local Bullet = Object:extend()

function Bullet:new(x1,y1,x2,y2)
	self.img = love.graphics.newImage('assets/')
	self.sprite = assets['bullet'].state['happy']
	self.AABB = {
		x = 0, y = 0,
		w = self.sprite.w, h = self.sprite.h
	}
	self.velocity = {
		x = math.random(ww), y = math.random(wh)
	}
	self.angle = math.atan2(y2-y1, x2-x1)
	self.speed = 250
	self.isProjectile = true
end

return Bullet