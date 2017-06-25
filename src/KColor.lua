-------------
-- Generic RGBA type
-- **NOTE:** Despite the official documentation indicating the presence of
-- class methods, there aren't any. Attempts to call `Lerp`,
-- `Reset`, `SetColorize`, `SetOffset` or `SetTint` will fail
-- @author Ennis Massey
-- @module KColor
local KColor = {
  Alpha = nil, -- Alpha Value
  Blue = nil, -- Blue value
  Green = nil, -- Green value
  Red = nil
}
