----------------
-- Provides Random Number Generation
-- Calling RNG() will always give back an instance with the
-- same starting seed
-- **NOTE** If functions are called as such `RNG():FuncName`,
-- there will be no randomisation. Ensure you always assign a variable
-- with the return value of `RNG()`
-- @author Ennis Massey
-- @module RNG
-- @usage -- Creating a new RNG instance
-- local newRNG = RNG()


local RNG = {}


--- Constructor metamethod
-- Constructs a new RNG instance
-- @usage local newRNGInst = RNG()
function RNG.__call() end


--- Gets the Seed used for RNG
-- **NOTE** This is not the GAME seed. It is unrelated to item,
-- room and stage generation
-- @treturn integer Seed used for RNG
-- @usage local newRNGInst = RNG()
-- local rngSeed = newRNGInst:GetSeed()
function RNG:GetSeed() end

--- Function unknown, appears to return another seed value
-- Likely used for multiple random number generations
-- @treturn int Another seed?
function RNG:Next() end

--- Returns a float between 0.0 and 1.0
-- @treturn float random float
-- @usage local rng = RNG()
-- local randomFloat = rng:RandomFloat()
function RNG:RandomFloat() end

--- Returns an integer between 0 and Max (exclusive)
-- the RNG seed is changed. If the Max is a negative number, it
-- will return an unbound random integer.
-- @tparam integer Max maximum value
-- @treturn integer Random number between 0 and Max
function RNG:RandomInt(Max) end


--- Sets the seed to use for the next RNG
-- Both parameters seem to affect the RNG, but I'm not sure how @{ShiftIdx}
-- functions
-- @tparam integer Seed Value for RNG seeding
-- @tparam integer ShiftIdx Unknown. Will crash game if negative
function RNG:SetSeed(Seed, ShiftIdx) end
