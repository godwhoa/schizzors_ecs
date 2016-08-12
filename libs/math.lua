function math.loop(n,min,max)
	if n < min then
		return max
	end
	if n > max then
		return min
	end
	return n
end