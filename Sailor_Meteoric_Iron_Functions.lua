--=============================================
-- Randomly Spawn Random Resource on Eureka by SailorCat
--=============================================
function Sailor_Meteoric_Iron(PlotX, PlotY, ImprovementID, resourceID, iEra)
	local iIron =		GameInfo.Resources['RESOURCE_IRON'].Index
	local iAluminum =	GameInfo.Resources['RESOURCE_ALUMINUM'].Index
	local iMeteorHut =	GameInfo.Improvements['IMPROVEMENT_METEOR_GOODY'].Index
	if ImprovementID == iMeteorHut then
		local mPlot = Map.GetPlot(PlotX, PlotY)
		print(PlotX, PlotY)
		local iEras = Game.GetEras()
		local iEra = iEras:GetCurrentEra()
		--print(iEra)
		if iEra < 5 then
			ResourceBuilder.SetResourceType(mPlot, iIron, 1)
			print("//// Meteoric iron spawned!")
		else
			ResourceBuilder.SetResourceType(mPlot, iAluminum, 1)
			print("//// Meteoric aluminum spawned!")
		end
	end
end

Events.ImprovementAddedToMap.Add(Sailor_Meteoric_Iron)