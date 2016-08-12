inspect = require "inspect"
require "libs.math"
Object = require "libs.classic"
assets = require "asset"
tiny = require "libs.tiny"
Character = require 'entities.character'
--systems
control_sys = require 'systems.control'
velocity_sys = require 'systems.velocity'
friction_sys = require 'systems.friction'
sprite_sys = require 'systems.sprite'
proj_sys = require 'systems.projectile'
--entities
bullet_ent = require 'entities.bullet'
ai_ent = require 'entities.ai'
player_ent = require 'entities.player'

ww,wh = 666,666
love.window.setMode(ww,wh,{msaa=5})
love.window.setTitle("Schizzors")

function love.load()
	ai, player = ai_ent(),player_ent()
	world = tiny.world(velocity_sys,control_sys,friction_sys,sprite_sys,proj_sys,
					ai, player)
end

function love.wheelmoved(x, y)
	player:wheelmoved(x,y)
end

function love.keypressed(key)
end

function love.mousepressed(x, y, button)
	player:mousepressed(x, y, button)
end

function love.draw()
	local dt = love.timer.getDelta()
	world:update(dt)
end