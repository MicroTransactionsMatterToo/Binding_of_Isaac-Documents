---------------
-- Base Class of any moving object, item, enemy, player or otherwise
-- @author Ennis Massey
-- @classmod Entity

local Entity = {}


--- Returns a reference to a table that can be used to store data for an
-- @{Entity}
-- @treturn {...} A table, either empty, or with data in it
function Entity:GetData()
end

--- Assumedly updates an Entity's fields
function Entity:Update()
end

--- Renders the @{Entity} at an offset from the Entities current position
-- @tparam Vector Offset offset from entity to render at
function Entity:Render(Offset)
end
