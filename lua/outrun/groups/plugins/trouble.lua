-- trouble.nvim
return function(p)
  return {
    TroubleNormal = { fg = p.fg, bg = p.bg_alt },
    TroubleNormalNC = { fg = p.fg, bg = p.bg_alt },
    TroubleText = { fg = p.fg },
    TroubleCount = { fg = p.bg, bg = p.accent, bold = true },
    TroubleSource = { fg = p.comment },
    TroubleFile = { fg = p.accent },
    TroubleDirectory = { fg = p.blue },
    TroubleIndent = { fg = p.bg_float },
    TroubleFoldIcon = { fg = p.comment },
    TroublePos = { fg = p.comment },
    TroubleCode = { fg = p.comment },
    TroubleError = { fg = p.error },
    TroubleWarning = { fg = p.warn },
    TroubleInformation = { fg = p.info },
    TroubleHint = { fg = p.hint },
  }
end
