local Character = Object:extend()

function Character:new()
	self.form = 'rock'
	self.emotion = 'happy'
	self.sprite = assets[self.form].states[self.emotion]
	self.AABB = {
		x = math.random(ww), y = math.random(wh),
		w = self.sprite.w, h = self.sprite.h
	}
	self.velocity = {
		x = 0, y = 0,
	}
	self.displace = 0.1
end

return Character