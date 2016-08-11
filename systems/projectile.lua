local ProjectileSystem = tiny.processingSystem()

ProjectileSystem.filter = tiny.requireAll("isProjectile")

function ProjectileSystem:process(e, dt)
	-- velocity from angle
	e.velocity.x, e.velocity.y = math.cos(e.angle) * dt * e.speed, math.sin(e.angle) * dt * e.speed
	
	-- remove if out of bounds
	if e.AABB.x+e.AABB.w < 0 or e.AABB.x+e.AABB.w > ww then
		tiny.remove(world, e)
	end
	
	if e.AABB.y+e.AABB.h < 0 or e.AABB.y+e.AABB.h > wh then
		tiny.remove(world, e)
	end
end

return ProjectileSystem