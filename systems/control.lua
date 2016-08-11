-- controls players
local ControlSystem = tiny.processingSystem()

ControlSystem.filter = tiny.requireAll("velocity","isPlayer")

function ControlSystem:process(e, dt)
	if love.keyboard.isDown('w') then
		e.velocity.y = e.velocity.y - e.displace
	end
	if love.keyboard.isDown('a') then
		e.velocity.x = e.velocity.x - e.displace
	end
	if love.keyboard.isDown('s') then
		e.velocity.y = e.velocity.y + e.displace
	end
	if love.keyboard.isDown('d') then
		e.velocity.x = e.velocity.x + e.displace
	end
end

return ControlSystem