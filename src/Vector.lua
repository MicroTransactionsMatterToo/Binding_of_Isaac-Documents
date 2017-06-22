--------------
-- Vector type
-- @author Ennis Massey
-- @classmod Vector

local Vector = {}


--- Contains properties of the Vector type
Vector.__propget = {
  X = nil, -- X coordinates of @{Vector}
  Y = nil -- Y coordinates of @{Vector}
}

--- Constructs a new Vector
--
-- @tparam float x X coordinate the Vector represents
-- @tparam float y Y coordinate the Vector represents
-- @treturn Vector new vector
-- @usage local spawnPosition = Vector(0, 20)
function Vector.__call(x, y)
end

--- Addition metamethod, allows addition of one @{Vector} to another
--
-- @tparam Vector Right Vector to add
-- @treturn Vector result of addition
-- @usage Vector(0,0) + Vector(0,2)
function Vector.__add(Right) end

--- Subtraction metamethod, allows addition of one @{Vector} to another
--
-- @tparam Vector Right Vector to subtract
-- @treturn Vector result of subtraction
-- @usage Vector(0,0) - Vector(0,2)
function Vector.__sub(Right) end

--- Unary minus (negation) metamethod, allows negation of a @{Vector}
--
-- @treturn Vector negated vector
-- @usage -Vector(0,2)
function Vector.__unm() end

--- Division metamethod, allows division of one @{Vector} by a float
--
-- @tparam float Modifier Number to divide by
-- @usage Vector(2, 2) / 2
function Vector.__div(Modifier) end

--- Multiplication metamethod, allows multiplication of one @{Vector} by a float
--
-- @tparam float Modifier Number to multiply by
-- @usage Vector(2, 2) * 2
function Vector.__mul(Modifier) end

--- Normalises the given Vector
--
-- **This is an instance only method, it cannot be called directly from @{Vector}**
-- @treturn nil nil
function Vector:Normalize()
end

--- Returns the Vector, normalised
--
-- **This is an instance only method, it cannot be called directly from @{Vector}**
-- @treturn Vector Normalised Vector
function Vector:Normalized()
end

--- Returns the Dot product (Scalar) of two vectors
--
-- **This is an instance only method, it cannot be called directly from @{Vector}**
-- @tparam Vector second Second vector in the dot product equation
-- @treturn float dot product of the two `Vector` 's
function Vector:Dot(second)
end

--- Returns the Cross product of two vectors
-- This is entirely useless, as it returns the *Z* coordinate, or height, which cannot be used.
--
-- **This is an instance only method, it cannot be called directly from @{Vector}**
-- @tparam Vector second Second vector in the cross product equation
function Vector:Cross(second)
end

--- Returns a lerped version of the two vectors
-- Doesn't seem to work, always returns nil
--
-- **This is an instance only method, it cannot be called directly from @{Vector}**
-- @tparam Vector first first vector in calculation
-- @tparam Vector second second vector in calculation
-- @tparam float t percentage to multiply vectors by
function Vector:Lerp(first, second, t)
end

--- Clamps the vector based on given boundings. Direction is not kept
--
-- **This is an instance only method, it cannot be called directly from @{Vector}**
-- @tparam float MinX Minimum X bounding
-- @tparam float MinY Minimum Y bounding
-- @tparam float MaxX Maximum X bounding
-- @tparam float MaxY Maximum Y bounding
-- @usage local tempVector = Vector(30, 20)
-- tempVector:Clamp(0, 0, 20, 10)
-- tempVector == Vector(20, 10)
function Vector:Clamp(MinX, MinY, MaxX, MaxY) end

--- Returns the clamped version of the current @{Vector}
--
-- **This is an instance only method, it cannot be called directly from @{Vector}**
-- @tparam float MinX Minimum X bounding
-- @tparam float MinY Minimum Y bounding
-- @tparam float MaxX Maximum X bounding
-- @tparam float MaxY Maximum Y bounding
-- @treturn Vector clamped vector
-- @usage local tempVector = Vector(30, 20)
-- local newTemp = tempVector:Clamp(0, 0, 20, 10)
-- newTempVector == Vector(20, 10)
-- tempVector == Vector(30, 20)
function Vector:Clamped(MinX, MinY, MaxX, MaxY) end

--- Returns the distance between two @{Vector}'s
--
-- **This is an instance only method, it cannot be called directly from @{Vector}**
-- @tparam Vector second second vector
-- @usage Vector(2,0):Distance(Vector(0,2)) == 2
function Vector:Distance(second) end

--- Returns the squared distance between two @{Vector}'s
--
-- **This is an instance only method, it cannot be called directly from @{Vector}**
-- @tparam Vector second second vector
-- @usage Vector(2,0):DistanceSquared(Vector(0,2)) == 8
function Vector:DistanceSquared(second) end

--- Constructs a Vector from a given angle
--
-- **This is a static method, it cannot be called from an instance of @{Vector}**
-- @tparam float AngleDegrees Angle in degrees to use when creating Vector
function Vector.FromAngle(AngleDegrees) end

--- Returns the angle the vector is facing
--
-- **This is an instance only method, it cannot be called directly from @{Vector}**
-- @treturn float Angle
function Vector:GetAngleDegrees() end

--- Returns the length of the vector
--
-- **This is an instance only method, it cannot be called directly from @{Vector}**
-- @treturn float the length of the vector
function Vector:Length() end

--- Returns the length squared of the vector
--
-- **This is an instance only method, it cannot be called directly from @{Vector}**
-- @treturn float squared length of the vector
function Vector:LengthSquared() end

--- Resizes a vector
--
-- **This is an instance only method, it cannot be called directly from @{Vector}**
-- @tparam float NewLength new length for vector
function Vector:Resize(NewLength) end

--- Returns a resized vector
--
-- **This is an instance only method, it cannot be called directly from @{Vector}**
-- @tparam float NewLength new length for vector
-- @treturn Vector resized vector
function Vector:Resized(NewLength) end

--- Returns a rotated version of the Vector
--
-- **This is an instance only method, it cannot be called directly from @{Vector}**
-- @tparam float AngleDegrees angle to rotate by
-- @treturn Vector rotated vector
function Vector:Rotated(AngleDegrees) end
