local SpriteSystem = tiny.processingSystem()

SpriteSystem.filter = tiny.requireAny("isPlayer", "isAI")

function SpriteSystem:process(e, dt)
	love.graphics.draw(e.sprite.img, e.sprite.states[e.emotion], e.AABB.x, e.AABB.y)
end

return SpriteSystem