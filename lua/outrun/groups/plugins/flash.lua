-- flash.nvim
return function(p)
  return {
    FlashBackdrop = { fg = p.comment },
    FlashMatch = { fg = p.bg, bg = p.blue },
    FlashCurrent = { fg = p.bg, bg = p.accent },
    FlashLabel = { fg = p.bg, bg = p.error, bold = true },
    FlashPrompt = { fg = p.fg, bg = p.bg_alt },
    FlashPromptIcon = { fg = p.accent },
    FlashCursor = { fg = p.bg, bg = p.fg },
  }
end
