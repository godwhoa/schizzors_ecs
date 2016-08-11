local VelocitySystem = tiny.processingSystem()

VelocitySystem.filter = tiny.requireAll("AABB", "velocity")

function VelocitySystem:process(e, dt)
	e.AABB.x = e.AABB.x + e.velocity.x
	e.AABB.y = e.AABB.y + e.velocity.y
end

return VelocitySystem