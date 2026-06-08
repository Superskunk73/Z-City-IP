local function RegisterWW2Class(name, model)
    local CLASS = player.RegClass(name)

    function CLASS.Off(self)
        if CLIENT then return end
    end

    function CLASS.On(self)
        if CLIENT then return end

        self:SetModel(model)
        self:SetNetVar("Accessories", "none")
    end

    function CLASS.Guilt(self, victim)
        if CLIENT then return end

        if victim:GetPlayerClass() == self:GetPlayerClass() then
            return 1
        end
    end

    CLASS.CanUseDefaultPhrase = true
    CLASS.CanEmitRNDSound = true
    CLASS.CanUseGestures = true
end

RegisterWW2Class("ww2_german", "models/player/dod_german_exp_pm.mdl")
RegisterWW2Class("ww2_american", "models/player/dod_american_exp_pm.mdl")
