local Character = Object:extend()

function Character:new()
	self.form = 'rock'
	self.emotion = 'happy'
	self.sprite = assets[self.form]
	self.AABB = {
		x = math.random(ww), y = math.random(wh),
		w = self.sprite.w, h = self.sprite.h
	}
	self.velocity = {
		x = 0, y = 0,
	}
	self.friction = 0.98
	self.displace = 0.1
	self.scroll_count = 1
	self.forms = {'rock','paper','scissors'}
end

function Character:form_up()
	self.scroll_count = math.loop(self.scroll_count + 1,1,#self.forms)
	self:set_form(self.forms[self.scroll_count])
end

function Character:form_down()
	self.scroll_count = math.loop(self.scroll_count - 1,1,#self.forms)
	self:set_form(self.forms[self.scroll_count])
end

function Character:set_form(form)
	self.form = form
	self.sprite = assets[self.form]
	self.AABB.w,self.AABB.h = self.sprite.w, self.sprite.h
end

return Character