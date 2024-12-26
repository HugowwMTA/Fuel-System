local sx, sy = guiGetScreenSize()

local screenW, screenH = guiGetScreenSize()
local resW, resH = 1360,768
local x, y = (screenW/resW), (screenH/resH)

local gilroy = dxCreateFont("files/fonts/Gilroy-Bold.ttf", 17.71*2)
local luxora = dxCreateFont("files/fonts/LuxoraGrotesk-Regular.ttf", 9.21*2)
local luxoramed = dxCreateFont("files/fonts/LuxoraGrotesk-Medium.ttf", 14.17*2)
local luxorabook = dxCreateFont("files/fonts/LuxoraGrotesk-Book.ttf", 7.8*2)
local outfit = dxCreateFont("files/fonts/Outfit-Regular.ttf", 17*2)
local outfit2 = dxCreateFont("files/fonts/Outfit-Regular.ttf", 7*2)
local outfit3 = dxCreateFont("files/fonts/Outfit-Regular.ttf", 5*2)
local outfit4 = dxCreateFont("files/fonts/Outfit-Regular.ttf", 13*2)

--------------------------------------------------------------------------------------------------------------
 -- UI - Client
--------------------------------------------------------------------------------------------------------------


type_select = "Alcool"
percent_select = "25"
local price = "0"

function render()
	
	dxDrawRectangle(x*0, y*0, x*1360, y*768, tocolor(0, 0, 0, 125))

	xx, yy, zz = getElementPosition(localPlayer)
    zone = getZoneName(xx, yy, zz)
    city = getZoneName(xx, yy, zz, true)
    dxDrawText("Posto de Gasolina", x*601.73, y*164.61, x*148.75, y*21.41, tocolor(255, 255, 255, 255), 0.5, gilroy, "center", "center", false, false, false, true, false)
    dxDrawText(zone..", "..city, x*632.9, y*192.43, x*86.42, y*9.21, tocolor(255, 255, 255, 255), 0.5, luxora, "center", "center", false, false, false, true, false)


	dxDrawImage(x*536.21, x*228.08, x*136, y*26.58, "files/gfx/gas_type.png", 0, 0, 0, tocolor(255, 255, 255, 255))
	if isCursorOnElement(x*536.21, x*228.08, x*136, y*26.58) then 
		dxDrawImage(x*536.21, x*228.08, x*136, y*26.58, "files/gfx/gas_type-select.png", 0, 0, 0, color)
	end
	dxDrawText("Álcool", x*589.21, y*235.88, x*30, y*11, tocolor(255, 255, 255, 255), 0.5, luxora, "center", "center", false, false, false, true, false)

	dxDrawImage(x*680, x*228.08, x*136.71, y*26.58, "files/gfx/gas_type.png", 0, 0, 0, tocolor(255, 255, 255, 255))
	if isCursorOnElement(x*680, x*228.08, x*136.71, y*26.58) then 
		dxDrawImage(x*680, x*228.08, x*136.71, y*26.58, "files/gfx/gas_type-select.png", 0, 0, 0, color)
	end
	dxDrawText("Gasolina", x*730.35, y*235.88, x*36, y*11, tocolor(255, 255, 255, 255), 0.5, luxora, "center", "center", false, false, false, true, false)

	if type_select == "Alcool" then
		dxDrawImage(x*536.21, x*228.08, x*136, y*26.58, "files/gfx/gas_type-select.png", 0, 0, 0, color)
	else
		dxDrawImage(x*680, x*228.08, x*136.71, y*26.58, "files/gfx/gas_type-select.png", 0, 0, 0, color)
	end


	dxDrawText("Quantidade:", x*536.21, y*272.71, x*38.25, y*9.21, tocolor(255, 255, 255, 200), 0.5, luxorabook, "left", "center", false, false, false, true, false)
	
	dxDrawImage(x*536.21, x*286.88, x*61.63, y*62.33, "files/gfx/percent_gas.png", 0, 0, 0, tocolor(255, 255, 255, 255))
    dxDrawText("Reabastecer", x*546.83, y*323.46, x*40, y*9, tocolor(255, 255, 255, 125), 0.5, outfit3, "center", "center", false, false, false, true, false)
	dxDrawText("25%", x*553.83, y*302.46, x*30, y*21, tocolor(255, 255, 255, 150), 0.5, outfit4, "center", "center", false, false, false, true, false)
	if percent_select == "25" then
		dxDrawImage(x*536.21, x*286.88, x*61.63, y*62.33, "files/gfx/percent_gas-select.png", 0, 0, 0, color)
	end


	dxDrawImage(x*609.17, x*286.88, x*61.63, y*62.33, "files/gfx/percent_gas.png", 0, 0, 0, tocolor(255, 255, 255, 255))
    dxDrawText("Reabastecer", x*619.79, y*323.46, x*40, y*9, tocolor(255, 255, 255, 125), 0.5, outfit3, "center", "center", false, false, false, true, false)
	dxDrawText("50%", x*625.79, y*302.46, x*30, y*21, tocolor(255, 255, 255, 150), 0.5, outfit4, "center", "center", false, false, false, true, false)
	if percent_select == "50" then
		dxDrawImage(x*609.17, x*286.88, x*61.63, y*62.33, "files/gfx/percent_gas-select.png", 0, 0, 0, color)
	end

	dxDrawImage(x*681.42, x*286.88, x*61.63, y*62.33, "files/gfx/percent_gas.png", 0, 0, 0, tocolor(255, 255, 255, 255))
    dxDrawText("Reabastecer", x*692.04, y*323.46, x*40, y*9, tocolor(255, 255, 255, 125), 0.5, outfit3, "center", "center", false, false, false, true, false)
	dxDrawText("75%", x*699.04, y*302.46, x*30, y*21, tocolor(255, 255, 255, 150), 0.5, outfit4, "center", "center", false, false, false, true, false)
	if percent_select == "75" then
		dxDrawImage(x*681.42, x*286.88, x*61.63, y*62.33, "files/gfx/percent_gas-select.png", 0, 0, 0, color)
	end

	dxDrawImage(x*753.67, x*286.88, x*61.63, y*62.33, "files/gfx/percent_gas.png", 0, 0, 0, tocolor(255, 255, 255, 255))
    dxDrawText("Reabastecer", x*764.29, y*323.46, x*40, y*9, tocolor(255, 255, 255, 125), 0.5, outfit3, "center", "center", false, false, false, true, false)
	dxDrawText("100%", x*769.29, y*302.46, x*30, y*21, tocolor(255, 255, 255, 150), 0.5, outfit4, "center", "center", false, false, false, true, false)
	if percent_select == "100" then
		dxDrawImage(x*753.67, x*286.88, x*61.63, y*62.33, "files/gfx/percent_gas-select.png", 0, 0, 0, color)
	end

	vehi = getNearestElement(localPlayer, "vehicle", 5)
	gas = getElementData(vehi, "fuel") or "0"--"10"
	dxDrawText("Litros disponiveis:", x*536.21, y*371.17, x*53.13, y*9.21, tocolor(255, 255, 255, 200), 0.5, luxorabook, "left", "center", false, false, false, true, false)
	dxDrawText(gas.."#868686/100", x*761.21, y*371.17, x*53.13, y*9.21, tocolor(255, 255, 255, 200), 0.5, luxorabook, "right", "center", false, false, false, true, false)
	dxDrawImage(x*536.33, y*385.33, x*276.24, y*25.31, "files/gfx/fuel_mark.png", 0, 0, 0, tocolor(255, 255, 255, 50))
	dxDrawImageSection(x*536.33, y*385.33, x*276.24*(gas / 100), y*25.31, 0, 0, (gas / 100)*276.24, y*25.31, "files/gfx/fuel_mark.png", 0, 0, 0, color)

	local fuel_price = getGasPrice(type_select) --or 8
	dxDrawImage(x*535.5, x*428.54, x*133.33, y*61.17, "files/gfx/gas_info.png", 0, 0, 0, tocolor(255, 255, 255, 255))
    dxDrawText("$"..fuel_price..",00", x*535.5+39.67, x*428.54+15.58, x*54, y*21, tocolor(255, 255, 255, 150), 0.5, outfit, "center", "center", false, false, false, true, false)
    dxDrawText("Preço por litro", x*535.5+44.17, y*428.54+39.58, x*45, y*9, tocolor(255, 255, 255, 150), 0.5, outfit2, "center", "center", false, false, false, true, false)
	dxDrawImage(x*681.58, y*428.54, x*133.33, y*61.17, "files/gfx/gas_info.png", 0, 0, 0, tocolor(255, 255, 255, 255))
	dxDrawText(gas, x*681.58+56.44, y*428.54+15.58, x*21, y*21, tocolor(255, 255, 255, 150), 0.5, outfit, "center", "center", false, false, false, true, false)
    dxDrawText("No Tanque", x*681.58+49.94, y*428.54+39.58, x*34, y*9, tocolor(255, 255, 255, 150), 0.5, outfit2, "center", "center", false, false, false, true, false)

	price = fuel_price*percent_select
	dxDrawText("$"..price, x*772.79, y*517.79, x*43.92, y*17, tocolor(255, 255, 255, 255), 0.5, luxoramed, "right", "center", false, false, false, true, false)
	dxDrawText("Total hoje:", x*536.21, y*523.5, x*49.58, y*15.58, tocolor(255, 255, 255, 150), 0.5, luxorabook, "left", "center", false, false, false, true, false)

	dxDrawRoundedRectangle(x*536.21, x*544.71, x*279.79, y*28.58, 3, color)
    dxDrawText("Checkout", x*652.6, y*552.5, x*47, y*13, tocolor(255, 255, 255, 255), 0.5, luxora, "center", "center", false, false, false, true, false)

end

function render_ui()
	addEventHandler("onClientRender", root, render)
	showCursor(true)
end
addEvent("render_ui", false)
addEventHandler("render_ui", root, render_ui)

function render_ui_close()
	if isEventHandlerAdded("onClientRender", root, render) then
		local stopX, stopY, stopZ = getPedBonePosition(localPlayer, 25)
		local endX, endY, endZ = point3(localPlayer, 3)
		local _, _, _, _, element = processLineOfSight(stopX, stopY, stopZ, endX, endY, endZ - 0.25)

		removeEventHandler("onClientRender", root, render)
		showCursor(false)
		function_handler = false
		percent = nil
		type_gas = nil
		startX, startY, startZ = nil
		local element = getNearestElement(localPlayer, "vehicle", 5)
		if element then
			setElementData(element, "percentage", "0")
		end
	end
end
bindKey("backspace", "down", render_ui_close)

function clientClick(_, state)
	if isEventHandlerAdded("onClientRender", root, render) then
		if state == "down" then
			if isCursorOnElement(x*536.21, x*228.08, x*136, y*26.58) then
				type_select = "Alcool"
			elseif isCursorOnElement(x*680, x*228.08, x*136.71, y*26.58) then
				type_select = "Gasolina"
			elseif isCursorOnElement(x*536.21, x*286.88, x*61.63, y*62.33) then
				percent_select = "25"
			elseif isCursorOnElement(x*609.17, x*286.88, x*61.63, y*62.33) then
				percent_select = "50"
			elseif isCursorOnElement(x*681.42, x*286.88, x*61.63, y*62.33) then
				percent_select = "75"
			elseif isCursorOnElement(x*753.67, x*286.88, x*61.63, y*62.33) then
				percent_select = "100"
			elseif isCursorOnElement(x*536.21, x*544.71, x*279.79, y*28.58) then
				local money = getPlayerMoney(localPlayer)
				if (money > price) then
					takePlayerMoney(price)
					removeEventHandler("onClientRender", root, render)
					showCursor(false)
					addEventHandler("onClientRender", getRootElement(), renderObjects)
					percent = percent_select
					type_gas = type_select
					local veh = getNearestElement(localPlayer, "vehicle", 5)
					if veh then
						setElementData(veh, "percentage", percent)
						fuel_type = getElementData(veh, type_gas) or "Alcool"
					end
					local sound = playSound("files/sfx/enter.mp3")
					setSoundVolume(sound, 0.5)

				else
					outputChatBox("Você não possui dinheiro para abastecer o veiculo.", 255, 255, 255, false)
				end
			end
		end
	end
end
addEventHandler("onClientClick", root, clientClick)





--------------------------------------------------------------------------------------------------------------
 -- Script
--------------------------------------------------------------------------------------------------------------

local bombas = {}
function verificarClique(button, state)
    if getNearestElement(localPlayer, "vehicle", 5) then
        if not isEventHandlerAdded("onClientRender", root, render) then
            if button == "left" and state == "down" then
                local camX, camY, camZ = getCameraMatrix()
                local hit, x, y, z, clickedElement = processLineOfSight(camX, camY, camZ, getCursorPositionWorld())
                
                if hit and clickedElement then
                    for _, bomba in ipairs(bombas) do
                        if clickedElement == bomba then
                            for _, c in ipairs(fuelStationList) do
                                if startX and startY and startZ then
                                    destroyObj()
                                    function_handler = false
									outputChatBox("Mangueira guardada, siga sua viagem!", 255, 255, 255, false)

                                    local sound = playSound("files/sfx/leave.mp3")
                                    setSoundVolume(sound, 0.5)
                                else
                                    local bomb = getNearestElement(localPlayer, "object", 1)
                                    if bomb == bomba then
                                        startX, startY, startZ = getElementPosition(bomb)
                                        addEventHandler("onClientRender", root, render)
                                        showCursor(true)
                                        function_handler = true
                                    end
                                end
                                break
                            end
                            break
                        end
                    end
                end
            end
        end
    else
		outputChatBox("Necessário um carro na baia para abrir a bomba.", 255, 255, 255, false)
    end
end
addEventHandler("onClientClick", root, verificarClique)

sound = false
function renderObjects()
	if not isEventHandlerAdded("onClientRender", root, render) then
		if startX and startY and startZ then
			local stopX, stopY, stopZ = getPedBonePosition(localPlayer, 35)
			local dist = getDistanceBetweenPoints3D(startX, startY, startZ, stopX, stopY, stopZ)
			if dist < maxDistance then
				renderDetail(stopX, stopY, stopZ, startX, startY, startZ, dist)
				local _, _, stopRZ = getElementRotation(localPlayer)
				
				if isElement(object) then
					setElementPosition(object, stopX, stopY, stopZ)
					setElementRotation(object, 90, 0, stopRZ - 170)
				else
					object = createObject(objectId2, stopX, stopY, stopZ, 90, 0, stopRZ - 170)
					setElementCollisionsEnabled(object, false)
					setObjectScale(object, 0.14)
				end
				
				if getPedControlState(localPlayer, "fire") then
					local endX, endY, endZ = point3(localPlayer, 3)
					local _, _, _, _, element = processLineOfSight(stopX, stopY, stopZ, endX, endY, endZ - 0.25)
					if element and getElementType(element) == "vehicle" then
						if not chek then
							chek = true
							time = getTickCount()
						end
						local x1, y1 = getElementPosition(localPlayer)
						local x2, y2 = getElementPosition(element)
						local rot = point2(x1, y1, x2, y2)
						local veh = getNearestElement(localPlayer, "vehicle", 3)
						if veh then
							keyStateDown(veh)
						end
						
						if sound == false then
							sound = true
							soundfill = playSound("files/sfx/fill.mp3")
							setSoundVolume(soundfill, 0.5)
						end
					else
						if sound then
							destroyElement(sound)
						end
						sound = false
					end
					if not isEventHandlerAdded("onClientRender", root, renderAnimation) then
						addEventHandler("onClientRender", root, renderAnimation)
					end
				else
					if isEventHandlerAdded("onClientRender", root, renderAnimation) then
						removeEventHandler("onClientRender", root, renderAnimation)
					end
					setPedAnimation(localPlayer)
					chek = false
					if soundfill and sound == true then
						if soundfill then
							destroyElement(soundfill)
						end	
						sound = false
					end
					if isElement(effect) then
						destroyElement(effect)
					end
				end
			else
				destroyObj()
			end
		end
	end
end

function keyStateDown(vehicle)
	local fuel = getElementData(vehicle, "fuel") or 0
	local fuel_type = getElementData(vehicle, "fuel_type") or "Alcool"
	local percentage = getElementData(vehicle, "percentage") or 0

	if (time + (fueltime * 1000)) < getTickCount() then
		time = getTickCount()
		if fuel < 100 then
			if percentage > "0" then

				percentage = percentage - 1
				fuel = fuel + 1
				
				setElementData(vehicle, "percentage", ""..percentage.."")
				setElementData(vehicle, "fuel", fuel)
			else
				if soundfill then
					destroyElement(soundfill)
					sound = false
					local sound = playSound("files/sfx/leave.mp3")
					setSoundVolume(sound, 0.5)
				end
				outputChatBox("A procentagem selecionada se esgotou, guarde a mangueira.", 255, 255, 255, false)
			end
		else
			if soundfill then
				destroyElement(soundfill)
				sound = false
				local sound = playSound("files/sfx/leave.mp3")
				setSoundVolume(sound, 0.5)
			end
			outputChatBox("A gasolina do veiculo esta cheia, guarde a mangueira.", 255, 255, 255, false)
		end
	end 
end




--------------------------------------------------------------------------------------------------------------
 -- Functions
--------------------------------------------------------------------------------------------------------------

function fuel_atualize(alc, gas)
	gasolina = gas
	alcool = alc
end
addEvent( "fuel_atualize", true )
addEventHandler( "fuel_atualize", root, fuel_atualize )

function getGasPrice(type)
	if type == "Alcool" then
		return alcool
	elseif type == "Gasolina" then
		return gasolina
	end
end

function destroyObj()
	removeEventHandler("onClientRender", getRootElement(), renderObjects)
	startX, startY, startZ = false, false, false
	setPedAnimation(localPlayer)
	chek = false
	function_handler = false
	if isElement(object) then
		destroyElement(object)
	end
end

function getNearestElement(player, type, distance)
    local result = false
    local dist = nil
    if player and isElement(player) then
        local elements = getElementsWithinRange(Vector3(getElementPosition(player)), distance, type, getElementInterior(player), getElementDimension(player))
        for i = 1, #elements do
            local element = elements[i]
            if element ~= player then
                if not dist then
                    result = element
                    dist = getDistanceBetweenPoints3D(Vector3(getElementPosition(player)), Vector3(getElementPosition(element)))
                else
                    local newDist = getDistanceBetweenPoints3D(Vector3(getElementPosition(player)), Vector3(getElementPosition(element)))
                    if newDist <= dist then
                        result = element
                        dist = newDist
                    end
                end
            end
        end
    end
    return result
end

function renderAnimation()
    for k, v in ipairs(getElementsByType("player")) do
        local block, animation = getPedAnimation(v)
        if animation ~= "jetpack_idle" then
            setPedAnimation(v, "ped", "jetpack_idle", 200, true, false, false, true)
        end
    end
end

addEventHandler("onClientResourceStart", resourceRoot,
    function()
        for i, c in ipairs(clearStation) do
            fuelStationList[i] = createMarker(c[1], c[2], c[3], "corona", 1.5, 25, 255, 25, 0)
            local bomba = createObject(objectId1, c[1], c[2], c[3] + 0.4, 0, 0, c[4])
            table.insert(bombas, bomba) -- Adiciona a bomba na tabela
        end
    end
)

addEventHandler("onClientVehicleStartEnter", getRootElement(),
	function(player)
		if player == localPlayer then
			if startX and startY and startZ then
				cancelEvent()
			end
		end
	end
)

function isCursorOnElement( posX, posY, width, height )
    if isCursorShowing( ) then
      local mouseX, mouseY = getCursorPosition( )
      local clientW, clientH = guiGetScreenSize( )
      local mouseX, mouseY = mouseX * clientW, mouseY * clientH
      if ( mouseX > posX and mouseX < ( posX + width ) and mouseY > posY and mouseY < ( posY + height ) ) then
        return true
      end
    end
    return false
end

_dxDrawText = dxDrawText
function dxDrawText(text, x, y, w, h, ...)
    return _dxDrawText(text, x, y, x + w, y + h, ...)
end

function dxDrawRoundedRectangle(x, y, width, height, radius, color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+radius, y+radius, width-(radius*2), height-(radius*2), color, postGUI, subPixelPositioning)
    dxDrawCircle(x+radius, y+radius, radius, 180, 270, color, color, 16, 1, postGUI)
    dxDrawCircle(x+radius, (y+height)-radius, radius, 90, 180, color, color, 16, 1, postGUI)
    dxDrawCircle((x+width)-radius, (y+height)-radius, radius, 0, 90, color, color, 16, 1, postGUI)
    dxDrawCircle((x+width)-radius, y+radius, radius, 270, 360, color, color, 16, 1, postGUI)
    dxDrawRectangle(x, y+radius, radius, height-(radius*2), color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+radius, y+height-radius, width-(radius*2), radius, color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+width-radius, y+radius, radius, height-(radius*2), color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+radius, y, width-(radius*2), radius, color, postGUI, subPixelPositioning)
end

function isEventHandlerAdded( sEventName, pElementAttachedTo, func )
    if type( sEventName ) == 'string' and isElement( pElementAttachedTo ) and type( func ) == 'function' then
        local aAttachedFunctions = getEventHandlers( sEventName, pElementAttachedTo )
        if type( aAttachedFunctions ) == 'table' and #aAttachedFunctions > 0 then
            for i, v in ipairs( aAttachedFunctions ) do
                if v == func then
                    return true
                end
            end
        end
    end
    return false
end

function poin1(x1, y1, x2, y2, distance)
	local x = x2 + (distance * (math.sin(math.atan2(x1 - x2, y1 - y2))))
    local y = y2 + (distance * (math.cos(math.atan2(x1 - x2, y1 - y2))))
	return x, y
end

function point2(x1, y1, x2, y2)
	local t = -math.deg(math.atan2(x2 - x1 , y2 - y1))
	if t < 0 then t = t + 360 end
	return t
end

function point3(element, distance)
    local x, y, z = getElementPosition(element)
    local rx, ry, rz = getElementRotation(element)
    local x = x + (distance * (math.sin(math.rad(-rz))))
    local y = y + (distance * (math.cos(math.rad(-rz))))
	return x, y, z
end

function getCursorPositionWorld()
    local cursorX, cursorY = getCursorPosition()
    if not cursorX or not cursorY then return nil end
    local screenW, screenH = guiGetScreenSize()
    cursorX, cursorY = cursorX * screenW, cursorY * screenH
    local camX, camY, camZ = getCameraMatrix()
    local cursorWorldX, cursorWorldY, cursorWorldZ = getWorldFromScreenPosition(cursorX, cursorY, 1000)
    return cursorWorldX, cursorWorldY, cursorWorldZ
end

addEventHandler( "onClientResourceStart", getRootElement( ),
    function ()
		local gas = math.random(gas_minimo, gas_maximo)
		local alc = math.random(alcool_minimo, alcool_maximo)
		alcool = alc
		gasolina = alc+gas
	end
);



fuelStationList = {}