---------------
-- Base Class of any moving object, item, enemy, player or otherwise
-- @author Ennis Massey
-- @module Entity

local Entity = {}


--- Appears to return nothing, no matter the entity
-- @treturn {nil...} An empty table
function Entity:GetData()
end

--- Assumedly updates an Entity's fields
function Entity:Update()
end

function Entity:Render(Offset)
end
