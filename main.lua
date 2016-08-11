inspect = require "inspect"
Object = require "libs.classic"
assets = require "asset"
print(inspect(asset))
tiny = require "libs.tiny"
Character = require 'entities.character'
--systems
control_sys = require 'systems.control'
friction_sys = require 'systems.friction'
sprite_sys = require 'systems.sprite'
proj_sys = require 'systems.projectile'
--entities
ai_ent = require 'entities.ai'
bullet_ent = require 'entities.bullet'
player_ent = require 'entities.player'

ww,wh = 666,666
love.window.setMode(ww,wh,{msaa=5})
love.window.setTitle("Schizzors")

function love.load()
	world = tiny.world(control_sys,friction_sys,sprite_sys,proj_sys,
					ai_ent(),bullet_ent(),player_ent())
end

function love.wheelmoved(x, y)
end

function love.keypressed(key)
end

function love.mousepressed(x, y, button)
end

function love.draw()
	local dt = love.timer.getDelta()
	world:update(dt)
end