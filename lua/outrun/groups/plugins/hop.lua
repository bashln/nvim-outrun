-- hop.nvim and leap.nvim
return function(p)
  return {
    HopNextKey = { fg = p.accent, bold = true },
    HopNextKey1 = { fg = p.accent, bold = true },
    HopNextKey2 = { fg = p.magenta },
    HopUnmatched = { fg = p.comment },

    LeapMatch = { fg = p.bg, bg = p.accent, bold = true },
    LeapLabelPrimary = { fg = p.bg, bg = p.error, bold = true },
    LeapLabelSecondary = { fg = p.bg, bg = p.green, bold = true },
    LeapBackdrop = { fg = p.comment },
  }
end
