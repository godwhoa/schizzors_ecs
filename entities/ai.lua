local AI = Character:extend()

function AI:new()
	AI.super.new(self)
	self.isAI = true
end

return AI