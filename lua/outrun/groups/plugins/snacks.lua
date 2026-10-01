-- snacks.nvim
return function(p)
  local t = {
    SnacksDashboardNormal = { fg = p.fg, bg = p.bg },
    SnacksDashboardDesc = { fg = p.fg },
    SnacksDashboardFile = { fg = p.accent },
    SnacksDashboardDir = { fg = p.comment },
    SnacksDashboardIcon = { fg = p.accent },
    SnacksDashboardKey = { fg = p.keyword, bold = true },
    SnacksDashboardTitle = { fg = p.accent, bold = true },
    SnacksDashboardHeader = { fg = p.accent },
    SnacksDashboardFooter = { fg = p.comment, italic = true },
    SnacksDashboardSpecial = { fg = p.magenta },
    SnacksDashboardTerminal = { fg = p.green },

    SnacksIndent = { fg = p.bg_float },
    SnacksIndentScope = { fg = p.accent },
    SnacksIndentBlank = { fg = p.bg_float },

    SnacksPickerNormal = { fg = p.fg, bg = p.bg_float },
    SnacksPickerBorder = { fg = p.muted, bg = p.bg_float },
    SnacksPickerTitle = { fg = p.accent, bold = true },
    SnacksPickerInput = { fg = p.fg, bg = p.bg_alt },
    SnacksPickerInputBorder = { fg = p.muted, bg = p.bg_alt },
    SnacksPickerInputTitle = { fg = p.accent, bold = true },
    SnacksPickerList = { fg = p.fg, bg = p.bg_float },
    SnacksPickerListCursorLine = { bg = p.selection },
    SnacksPickerMatch = { fg = p.accent, bold = true },
    SnacksPickerDir = { fg = p.comment },
    SnacksPickerFile = { fg = p.fg },
    SnacksPickerIcon = { fg = p.accent },
    SnacksPickerKeymapRhs = { fg = p.comment },

    SnacksExplorerNormal = { fg = p.fg, bg = p.bg },
    SnacksExplorerDir = { fg = p.blue },
    SnacksExplorerFile = { fg = p.fg },
    SnacksExplorerIcon = { fg = p.accent },
    SnacksExplorerBorder = { fg = p.muted },

    SnacksTerminalNormal = { fg = p.fg, bg = p.bg },
    SnacksScope = { fg = p.accent },
    SnacksStatuscolumn = { fg = p.muted },
    SnacksWords = { bg = p.selection },
  }

  local levels =
    { Error = p.error, Warn = p.warn, Info = p.info, Debug = p.muted, Trace = p.comment }
  for level, color in pairs(levels) do
    t['SnacksNotifier' .. level] = { fg = color, bg = p.bg_float }
    t['SnacksNotifier' .. level .. 'Border'] = { fg = color, bg = p.bg_float }
    t['SnacksNotifier' .. level .. 'Icon'] = { fg = color }
    t['SnacksNotifier' .. level .. 'Title'] = { fg = color, bold = true }
    t['SnacksNotifier' .. level .. 'Footer'] = { fg = p.comment, bg = p.bg_float }
  end
  return t
end
