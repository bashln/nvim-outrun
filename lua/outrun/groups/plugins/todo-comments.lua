-- todo-comments.nvim
return function(p)
  local out = {}
  local keywords = {
    FIX = p.error,
    TODO = p.info,
    HACK = p.warn,
    WARN = p.warn,
    PERF = p.magenta,
    NOTE = p.hint,
    TEST = p.green,
  }
  for kw, color in pairs(keywords) do
    out['TodoBg' .. kw] = { fg = p.bg, bg = color, bold = true }
    out['TodoFg' .. kw] = { fg = color }
    out['TodoSign' .. kw] = { fg = color }
  end
  return out
end
