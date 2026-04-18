--!strict
--!optimize 2

local ProjectileSettings = {}

local Types = require(script.Parent.Types)
local RaycastFunctions = require(script.Parent.RaycastFunctions)

function ProjectileSettings.new(rawSettings: Types.ProjectileSettingsOptional?): Types.ProjectileSettings
	local projectileSettings: Types.ProjectileSettingsOptional = rawSettings or {}
	return {
		MaxFlyTime = projectileSettings.MaxFlyTime or math.huge,
		MaxFlyDistance = projectileSettings.MaxFlyDistance or math.huge,
		MaxPiercesPerStep = projectileSettings.MaxPiercesPerStep or 1,
		RaycastParams = projectileSettings.RaycastParams,
		RaycastFunction = projectileSettings.RaycastFunction or RaycastFunctions.Default,
		CanPierce = projectileSettings.CanPierce or false,
		BlockcastSize = projectileSettings.BlockcastSize,
		SpherecastRadius = projectileSettings.SpherecastRadius,
		ShapecastPart = projectileSettings.ShapecastPart,
	}
end

return table.freeze(ProjectileSettings)
