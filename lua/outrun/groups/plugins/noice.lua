-- noice.nvim
return function(p)
  return {
    NoiceCmdlinePopup = { fg = p.fg, bg = p.bg_float },
    NoiceCmdlinePopupBorder = { fg = p.muted, bg = p.bg_float },
    NoiceCmdlinePopupTitle = { fg = p.accent, bold = true },
    NoiceCmdlineIcon = { fg = p.accent },
    NoiceMini = { fg = p.fg, bg = p.bg_float },
    NoicePopup = { fg = p.fg, bg = p.bg_float },
    NoicePopupBorder = { fg = p.muted, bg = p.bg_float },
    NoiceConfirm = { fg = p.fg, bg = p.bg_float },
    NoiceConfirmBorder = { fg = p.muted, bg = p.bg_float },
    NoiceLspProgressTitle = { fg = p.accent },
    NoiceLspProgressClient = { fg = p.comment },
  }
end
