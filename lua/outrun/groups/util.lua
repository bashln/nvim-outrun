-- Small color helpers for the theme modules.
local M = {}

local function parse(hex)
  hex = hex:gsub('#', '')
  return tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16)
end

local function byte(n)
  return string.format('%02x', math.floor(n + 0.5))
end

-- Mix two hex colors in sRGB, `t` = weight of `b` (0..1).
function M.blend(a, b, t)
  local ar, ag, ab = parse(a)
  local br, bg, bb = parse(b)
  return '#'
    .. byte(ar * (1 - t) + br * t)
    .. byte(ag * (1 - t) + bg * t)
    .. byte(ab * (1 - t) + bb * t)
end

return M
