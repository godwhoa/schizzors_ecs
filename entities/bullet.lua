local Bullet = Object:extend()

function Bullet:new(x1,y1,x2,y2)
	self.sprite = assets['bullet']
	self.AABB = {
		x = x1, y = y1,
		w = self.sprite.w, h = self.sprite.h
	}
	self.velocity = {
		x = 0, y = 0,
	}
	self.angle = math.atan2(y2-y1, x2-x1)
	self.speed = 500
	self.isProjectile = true
end

return Bullet