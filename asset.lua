local assets = {}

function add_asset(name,src,w,h,count)
	local img = love.graphics.newImage(src)
	local frames,states = {},{}
	for i=1,count do
		table.insert(frames,love.graphics.newQuad(w*(i-1), h*(i-1), w, h, img:getDimensions()))
	end
	if count == 2 then
		states = {happy=frames[1],ouch=frames[2]}
	else
		states = {happy=frames[1],ouch=frames[1]}
	end
	assets[name] = {w=w, h=h, img=img, states=states}
end

add_asset('rock','assets/rock.png',72, 54,2)
add_asset('paper','assets/paper.png',49,64,2)
add_asset('scissors','assets/scissors.png',47,80,1)
add_asset('bullet','assets/bullet.png',4,4,1)
add_asset('crosshair','assets/crosshair.png',28,28,1)

return assets