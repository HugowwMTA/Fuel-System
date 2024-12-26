-- Fuel System
setTimer ( function ( ) 
	for i, v in ipairs ( getElementsByType ( 'vehicle' ) ) do 
		local fuel = getElementData ( v, "fuel" )
		if not fuel then
			setElementData ( v, "fuel", 10 )
			setElementData ( v, "type_gas", "Alcool" )
			fuel = 10--75
		end
		local fuel_type = getElementData(v, "type_gas") or "Alcool"
		local speed = getVehicleSpeed ( v, "kph" )
		if ( fuel >= 1 and getVehicleOccupant ( v ) ) then
			if speed > 0 then
				if (fuel_type == "Gasolina") then
					setElementData ( v, "fuel", fuel - 1 )
					local fuel = fuel - 1
				else
					setElementData ( v, "fuel", fuel - 1.25 )
					local fuel = fuel - 1.25
				end
			end
		else
			setVehicleEngineState( v, false )
		end
	end
end, (fuel_time_down*1000), 0 )


-- Att Fuel Price
setTimer ( function ()
	local gas = math.random(gas_minimo, gas_maximo)
	local alc = math.random(alcool_minimo, alcool_maximo)
	alcool = alc
	gasolina = alc+gas
	triggerClientEvent(root, "fuel_atualize", root, alcool, gasolina)
end, 600000, 0)






-- Functions

function enable()
	local veh = getPedOccupiedVehicle(source)
	enableVehicleFunctions(source, veh)
end
addCommandHandler("enable", enable)

function enableVehicleFunctions(thePlayer, theVehicle )
	setVehicleEngineState( theVehicle, true )
	toggleControl (thePlayer, "accelerate", true )
	toggleControl (thePlayer, "brake_reverse", true )
end

function getVehicleSpeed ( tp, md )
	local md = md or "kph"
	local sx, sy, sz = getElementVelocity ( tp )
	local speed = math.ceil( ( ( sx^2 + sy^2 + sz^2 ) ^ ( 0.5 ) ) * 161 )
	local speed1 = math.ceil( ( ( ( sx^2 + sy^2 + sz^2 ) ^ ( 0.5 ) ) * 161 ) / 1.61 )
	if ( md == "kph" ) then
		return speed;
	else
		return speed1;
	end
end

