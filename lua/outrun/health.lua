-- :checkhealth outrun
local M = {}

local function rgb(hex)
  hex = hex:gsub('#', '')
  return tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16)
end

local function luminance(hex)
  local r, g, b = rgb(hex)
  local function channel(v)
    v = v / 255
    if v <= 0.04045 then
      return v / 12.92
    end
    return ((v + 0.055) / 1.055) ^ 2.4
  end
  return 0.2126 * channel(r) + 0.7152 * channel(g) + 0.0722 * channel(b)
end

local function contrast(a, b)
  local x, y = luminance(a), luminance(b)
  return (math.max(x, y) + 0.05) / (math.min(x, y) + 0.05)
end

function M.check()
  vim.health.start('Outrun (outrun)')

  local mod = require('outrun')
  local palette = mod.palette()

  local names = {}
  for name in pairs(palette) do
    names[#names + 1] = name
  end
  table.sort(names)

  if #names == 5 then
    vim.health.ok(('palette: %d colorschemes (%s)'):format(#names, table.concat(names, ', ')))
  else
    vim.health.error(('palette: expected 5 colorschemes, found %d'):format(#names))
  end

  vim.health.info('mode: ' .. (palette[names[1]] and palette[names[1]].mode or '?'))
  vim.health.info('current colorscheme: ' .. tostring(vim.g.colors_name))

  for _, name in ipairs(names) do
    local p = palette[name]
    local lowest = math.huge
    for i = 2, 7 do -- ANSI 1..6
      lowest = math.min(lowest, contrast(p.term[i], p.bg))
    end
    local report = vim.health.warn
    if lowest >= 7 then
      report = vim.health.ok
    elseif lowest >= 3.6 then
      report = vim.health.info
    end
    report(('%s: contrast %.2f (%s)'):format(name, lowest, p.mode))
  end
end

return M
