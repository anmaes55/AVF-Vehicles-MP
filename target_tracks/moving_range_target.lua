

track_distance = 2

function init() 
	track_driver = FindJoint("track_driver")
	turn_dial = FindJoint("turn_dial")

	track_driver_min, track_driver_max = GetJointLimits(track_driver)

	turn_dial_min, turn_dial_max = GetJointLimits(turn_dial)
	track_speed = math.random(4,8)

	change_dist = 0.92
	max_dist = 0.96
	side = "max"


	shift_time = 1
end


function tick()
	-- DebugWatch("track movement",GetJointMovement(track_driver))
	-- DebugWatch("track dist ",track_distance)
	-- DebugWatch("side  ",side)
	if(GetJointMovement(track_driver)<(track_driver_min+track_driver_max*(1-change_dist)) and side =="max") then 
		SetJointMotorTarget(turn_dial,turn_dial_min+turn_dial_max*(1-change_dist),track_speed)
		SetValue("track_distance",2,"linear",shift_time)
		side = "min"
	elseif(GetJointMovement(track_driver)>(track_driver_max*change_dist) and side =="min") then 
		SetJointMotorTarget(turn_dial,turn_dial_max*change_dist,track_speed)
		SetValue("track_distance",0,"linear",shift_time)
		side = "max"
	end

	if(track_distance == 0) then 
		SetJointMotorTarget(track_driver,track_driver_min+track_driver_max*(1-max_dist),track_speed)
		track_distance=1
	elseif(track_distance ==2) then 

		SetJointMotorTarget(track_driver,track_driver_max*max_dist,track_speed)
		track_distance=1
	end
end