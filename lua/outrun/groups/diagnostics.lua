local util = require('outrun.groups.util')

return function(p)
  local function vt(color)
    return { fg = color, bg = util.blend(p.bg, color, 0.12) }
  end
  local function underline(color)
    return { underline = true, sp = color }
  end

  return {
    DiagnosticError = { fg = p.error },
    DiagnosticWarn = { fg = p.warn },
    DiagnosticInfo = { fg = p.info },
    DiagnosticHint = { fg = p.hint },
    DiagnosticOk = { fg = p.green },

    DiagnosticVirtualTextError = vt(p.error),
    DiagnosticVirtualTextWarn = vt(p.warn),
    DiagnosticVirtualTextInfo = vt(p.info),
    DiagnosticVirtualTextHint = vt(p.hint),

    DiagnosticUnderlineError = underline(p.error),
    DiagnosticUnderlineWarn = underline(p.warn),
    DiagnosticUnderlineInfo = underline(p.info),
    DiagnosticUnderlineHint = underline(p.hint),

    DiagnosticFloatingError = { fg = p.error },
    DiagnosticFloatingWarn = { fg = p.warn },
    DiagnosticFloatingInfo = { fg = p.info },
    DiagnosticFloatingHint = { fg = p.hint },

    DiagnosticSignError = { fg = p.error },
    DiagnosticSignWarn = { fg = p.warn },
    DiagnosticSignInfo = { fg = p.info },
    DiagnosticSignHint = { fg = p.hint },
  }
end
