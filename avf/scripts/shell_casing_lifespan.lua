


function init()
	script_active = true

	DebugWatch("test",true)
	shape = FindShape("")
	min_dist = 30
	life_timer = 0 
	max_life = math.random(10,45)

end

function tick(dt) 
	DebugWatch("shell life",life_timer)

	if(script_active) then 
		if(IsHandleValid(shape)) then 
			local shape_pos = GetShapeWorldTransform(shape).pos
			local player_pos = GetPlayerPos()
			if(life_timer > max_life and  VecLength(VecSub(player_pos,shape_pos))>min_dist) then 
				Delete(shape)
				script_active = false
			else
				life_timer = life_timer + dt
			end

		else 
			script_active = false
		end
	end

end