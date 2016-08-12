local Player = Character:extend()

function Player:new()
	Player.super.new(self)
	self.isPlayer = true
end

function Player:mousepressed(x, y, button)
	if button == 1 then
		tiny.add(world,bullet_ent(self.AABB.x+self.sprite.w/2,self.AABB.y+self.sprite.h/2,x,y))
	end
end

function Player:wheelmoved(x,y)
    if y > 0 then
    	-- up
    	self:form_up()
    elseif y < 0 then
    	-- down
    	self:form_down()
    end 
end

return Player