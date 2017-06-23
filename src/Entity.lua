---------------
-- Base Class of any moving object, item, enemy, player or otherwise
-- @author Ennis Massey
-- @classmod Entity

local Entity = {}


--- Returns a reference to a table that is directly connected to the
-- @{Entity}.
-- @treturn {...} A table, either empty, or with data in it
function Entity:GetData()
end

--- Completely updates the Entity. (simulates a post update callback for that specific entity)
function Entity:Update()
end

--- Renders the @{Entity} at an offset from the Entities current position on the screen.
-- @tparam Vector Offset offset from entity to render at
function Entity:Render(Offset)
end


--- Renders the Entity's shadow at an offset from the shadow's current position on the screen if the entity's animation has a shadow layer.
-- @tparam Vector Offset offset from shadow to render at
-- @treturn boolean Success returns true if shadow was found, and is being rendered. false otherwise
function Entity:RenderShadowLayer(Offset)
end

--- I'm unsure if it has any effect.
function Entity:PostRender()
end

--- Sends a Take Damage callback to the specified Entity with the given set of parameters. 
-- @tparam float Damage the ammount of damage the entity should take. Half a heart for each full unit of damage.
-- @tparam integer DamageFlags the damage flags to be passed along with the hit. Each damage flag affects how the entity will take damage. See DamageFlag enum
-- @tparam EntityRef SourceEntity the source entity that hits the victim. Convert the entity to an EntityRef first: EntityRef(ent)
-- @tparam integer DamageCountdown only works if the flags contain the DamageFlag.DAMAGE_COUNTDOWN flag. How many ticks until the next hit containing the DAMAGE_COUNTDOWN flag can be received again.
-- @treturn boolean Success returns true if the entity successfully took damage. false otherwise or if it got denied in the callback.
function Entity:TakeDamage(Damage, DamageFlags, SourceEntity, DamageCountdown)
end

--- The entity dies, playing a death animation if it has one, and leaving a blood splat and making a death burst small sound.
function Entity:Kill()
end

--- The entity dies, playing a death animation if it has one.
function Entity:Die()
end

--- The entity stops existing, completely bypassing all death hooks.
function Entity:Remove()
end

--- The entity emits the gib particles as specified in the enities2.xml. this DOES NOT kill the entity.
function Entity:BloodExplode()
end

--- Adds to the entity's current velocity.
-- @tparam Vector Velocity the velocity vector to be added to the current velocity.
function Entity:AddVelocity(Velocity)
end

--- Multiplies the Entity's Friciton by the given ammount.
-- @tparam float MultiplyValue the value by which the Entity's Friction will be multiplied.
function Entity:MultiplyFriction(MultiplyValue)
end

--- Sets the Entity's Color to the specified color. 
-- @tparam Color Color the color to which the entity should be painted to.
-- @tparam integer Duration the ammount of game ticks for which the color should last. Infinite if set to 0 or lower.
-- @tparam integer Priority which color should be rendered on top of all. The lower the number the higher the priority. Appears to be ignored at 0 or lower duration.
-- @tparam boolean Fadeout if set to true, the color will slowly have faded to the original colors by the time the duration timeout is reached. 
function Entity:SetColor(Color, Duration, Priority, Fadeout)
end

--- Returns the Entity's current Color.
-- @treturn Color Color the entity's current Color.
function Entity:GetColor()
end

--- Sets the entity's sprite to the current frame in the given animation. The animation will be paused and considered finished.
-- @tparam string AnimationName the animation to get the frame from
-- @tparam integer FrameNum the frame to set the animation to
function Entity:SetSpriteFrame(AnimationName, FrameNum)
end

--- Sets the entity's overlay sprite to the current frame in the given animation. The animation will be paused and considered finished.
-- @tparam string AnimationName the animation to get the frame from
-- @tparam integer FrameNum the frame to set the animation to
function Entity:SetSpriteOverlayFrame(AnimationName, FrameNum)
end

--- Sets the Entity's size parameters to the given values.
-- @tparam float Size the entity's radius at which the entities start colliding with it
-- @tparam Vector SizeMulti multiplies the size in both directions by the given X and Y
-- @tparam integer NumGridCollisionPoints the ammount of points to split the enemy collision box into for calculations with grid collision. at 4 points becomes a square, at 6 points becomes a hexagon, etc.
function Entity:SetSize(Size, SizeMulti, NumGridCollisionPoints)
end

--- Detects if there is a GridEntity the Entity is colliding with, obstructing its path.
-- @treturn boolean Collide returns true if the Entity is colliding with grid and its path is being obstructed. false otherwise
function Entity:CollidesWithGrid()
end

--- Detects if the Entity is an enemy (an NPC). Every entity with a type 10 or above and lower than 1000 is considered an NPC.
-- @treturn boolean IsEnemy returns true if the entity is an enemy. false otherwise
function Entity:IsEnemy()
end

--- Detects if the Entity is active (not a fireplace or a shopkeeper) 
-- @tparam boolean IncludeDead optional - will count dead enemies as active if true
-- @treturn boolean IsActive returns true if the enemy is active, and, if IncludeDead is NOT specified, if the enemy is not dead
function Entity:IsActiveEnemy(IncludeDead)
end
