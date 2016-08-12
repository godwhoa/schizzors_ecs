local FrictionSystem = tiny.processingSystem()

FrictionSystem.filter = tiny.requireAll("velocity","friction")

function FrictionSystem:process(e, dt)
	e.velocity.x = e.velocity.x * e.friction
	e.velocity.y = e.velocity.y * e.friction
end

return FrictionSystem