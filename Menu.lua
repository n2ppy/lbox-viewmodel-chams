local cham = materials.Create("OofMaterial", [[
    "VertexLitGeneric"
    {
        "$basetexture" "vgui/white_additive"
        "$bumpmap" "vgui/white_additive"
        "$color2" "[100 0.5 0.5]"
        "$selfillum" "1"
        "$selfIllumFresnel" "1"
        "$selfIllumFresnelMinMaxExp" "[0.1 0.2 0.3]"
        "$selfillumtint" "[0 0.3 0.6]"
    }
]])

local on_drawmodel = function(ctx)
    local entity = ctx:GetEntity();

    if entity ~= nil then
        if entity:GetClass() == "CTFPlayer" then
            ctx:ForcedMaterialOverride(cham);
        end
    end
end

callbacks.Register("DrawModel", on_drawmodel);
