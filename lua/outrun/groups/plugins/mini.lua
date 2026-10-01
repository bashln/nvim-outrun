-- mini.nvim
return function(p)
  return {
    MiniIconsAzure = { fg = p.blue },
    MiniIconsBlue = { fg = p.blue },
    MiniIconsCyan = { fg = p.cyan },
    MiniIconsGreen = { fg = p.green },
    MiniIconsGrey = { fg = p.comment },
    MiniIconsOrange = { fg = p.orange },
    MiniIconsPurple = { fg = p.magenta },
    MiniIconsRed = { fg = p.red },
    MiniIconsYellow = { fg = p.yellow },

    MiniStatuslineModeNormal = { fg = p.bg, bg = p.accent, bold = true },
    MiniStatuslineModeInsert = { fg = p.bg, bg = p.green, bold = true },
    MiniStatuslineModeVisual = { fg = p.bg, bg = p.magenta, bold = true },
    MiniStatuslineModeReplace = { fg = p.bg, bg = p.red, bold = true },
    MiniStatuslineModeCommand = { fg = p.bg, bg = p.yellow, bold = true },
    MiniStatuslineModeOther = { fg = p.bg, bg = p.cyan, bold = true },
    MiniStatuslineFilename = { fg = p.fg, bg = p.bg_alt },
    MiniStatuslineDevinfo = { fg = p.fg, bg = p.surface },
    MiniStatuslineFileinfo = { fg = p.fg, bg = p.surface },
    MiniStatuslineInactive = { fg = p.comment, bg = p.bg_alt },

    MiniFilesNormal = { fg = p.fg, bg = p.bg_float },
    MiniFilesBorder = { fg = p.muted, bg = p.bg_float },
    MiniFilesBorderModified = { fg = p.warn, bg = p.bg_float },
    MiniFilesTitle = { fg = p.accent, bg = p.bg_float },
    MiniFilesTitleFocused = { fg = p.bg, bg = p.accent, bold = true },

    MiniPickNormal = { fg = p.fg, bg = p.bg_float },
    MiniPickBorder = { fg = p.muted, bg = p.bg_float },
    MiniPickMatchCurrent = { bg = p.selection },
    MiniPickMatchMarked = { bg = p.pmenu_sel },
    MiniPickHeader = { fg = p.accent },

    MiniStarterHeader = { fg = p.accent },
    MiniStarterFooter = { fg = p.comment },
    MiniStarterItem = { fg = p.fg },
    MiniStarterItemPrefix = { fg = p.warn },
    MiniStarterCurrent = { bg = p.selection },
    MiniStarterSection = { fg = p.blue },

    MiniHipatternsFixme = { fg = p.bg, bg = p.error, bold = true },
    MiniHipatternsHack = { fg = p.bg, bg = p.warn, bold = true },
    MiniHipatternsTodo = { fg = p.bg, bg = p.info, bold = true },
    MiniHipatternsNote = { fg = p.bg, bg = p.hint, bold = true },

    MiniDiffSignAdd = { fg = p.green },
    MiniDiffSignChange = { fg = p.yellow },
    MiniDiffSignDelete = { fg = p.red },
    MiniDiffOverAdd = { bg = p.diff_add },
    MiniDiffOverChange = { bg = p.diff_change },
    MiniDiffOverDelete = { bg = p.diff_delete },
  }
end
