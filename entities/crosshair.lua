local Crosshair = Object:extend()

function Crosshair:new()
	self.sprite = assets['crosshair']
	self.AABB = {
		x = 0, y = 0,
		w = self.sprite.w, h = self.sprite.h
	}
	self.emotion = "happy"
	self.isCrosshair = true
end

function Crosshair:mousemoved(x, y)
	self.AABB.x, self.AABB.y = x-self.sprite.w/2, y-self.sprite.h/2
end

return Crosshair