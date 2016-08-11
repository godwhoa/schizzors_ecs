local Character = require 'character'
local Player = Character:extend()

function Player:new()
	Player.super.new(self)
	self.isPlayer = true
end

return Player