local destination = Position(32780, 32687, 14)

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

		player:teleportTo(destination)
		position:sendMagicEffect(CONST_ME_TELEPORT)
		destination:sendMagicEffect(CONST_ME_TELEPORT)
		player:teleportTo(fromPosition)
		fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end


