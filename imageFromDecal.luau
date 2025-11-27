-- Returns the image ID in a decal.
local function imageFromDecal(decalId: number): number
	local info = MarketplaceService:GetProductInfo(decalId)
	assert(info.AssetTypeId == 13, "The provided decal ID is not a decal.")
	local asset = InsertService:LoadAsset(decalId)
	local decal = asset:FindFirstChildWhichIsA("Decal", true)
	assert(decal, "No decal exists in the inserted asset.")
	local id = decal.Texture
	asset:Destroy()
	return id
end

return imageFromDecal
