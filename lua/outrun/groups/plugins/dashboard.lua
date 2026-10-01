-- dashboard-nvim and alpha-nvim
return function(p)
  return {
    DashboardHeader = { fg = p.accent },
    DashboardCenter = { fg = p.fg },
    DashboardShortCut = { fg = p.keyword },
    DashboardFooter = { fg = p.comment, italic = true },
    DashboardKey = { fg = p.keyword, bold = true },
    DashboardDesc = { fg = p.fg },
    DashboardIcon = { fg = p.accent },

    AlphaHeader = { fg = p.accent },
    AlphaButtons = { fg = p.fg },
    AlphaShortcut = { fg = p.keyword },
    AlphaFooter = { fg = p.comment, italic = true },
    AlphaPopup = { fg = p.fg, bg = p.bg_float },
  }
end
