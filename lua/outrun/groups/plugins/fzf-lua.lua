-- fzf-lua
return function(p)
  return {
    FzfLuaNormal = { fg = p.fg, bg = p.bg_float },
    FzfLuaBorder = { fg = p.muted, bg = p.bg_float },
    FzfLuaTitle = { fg = p.accent, bold = true },
    FzfLuaCursor = { fg = p.bg, bg = p.fg },
    FzfLuaCursorLine = { bg = p.selection },
    FzfLuaCursorLineNr = { fg = p.accent, bold = true },
    FzfLuaSearch = { fg = p.fg, bg = p.search },
    FzfLuaFzfMatch = { fg = p.accent, bold = true },
    FzfLuaHeaderBind = { fg = p.accent },
    FzfLuaHeaderText = { fg = p.blue },
    FzfLuaTabTitle = { fg = p.accent, bold = true },
    FzfLuaTabMarker = { fg = p.warn },
    FzfLuaPath = { fg = p.fg },
    FzfLuaDirPart = { fg = p.comment },
    FzfLuaFilePart = { fg = p.fg },
  }
end
