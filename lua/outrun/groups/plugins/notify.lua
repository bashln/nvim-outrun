-- nvim-notify
return function(p)
  local out = {}
  local levels =
    { ERROR = p.error, WARN = p.warn, INFO = p.info, DEBUG = p.muted, TRACE = p.comment }
  for level, color in pairs(levels) do
    out['Notify' .. level .. 'Border'] = { fg = color, bg = p.bg_float }
    out['Notify' .. level .. 'Icon'] = { fg = color }
    out['Notify' .. level .. 'Title'] = { fg = color, bold = true }
    out['Notify' .. level .. 'Body'] = { fg = p.fg, bg = p.bg_float }
  end
  return out
end
