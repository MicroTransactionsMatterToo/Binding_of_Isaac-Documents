-------------
-- Wraps the games RNG seed
-- @author Ennis Massey
-- @module Seeds

local Seeds = {}


--- Sets a new seed for generation of levels
-- If empty, game will generate a new random seed
-- @tparam string StartSeed new seed
function Seeds:SetStartSeed(StartSeed) end

--- Clears Starting Seed, setting it to 0
-- Has the same effect as setting the start seed to `B911 99JA`
-- Will also cause @{Seeds.IsInitialized} to return false
function Seeds:ClearStartSeed() end



--- Sets a new seed, only if the seed used was not custom.
-- @tparam integer CurrentChallenge Current challenge being played (Should be from @{Enumerations.Challenge})
function Seeds:Restart(CurrentChallenge) end
