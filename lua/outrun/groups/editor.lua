-- Editor UI groups.
return function(p, opts)
  local bg = opts.transparent and 'NONE' or p.bg
  local bg_nc = opts.transparent and 'NONE' or p.bg_alt
  local nc_fg = opts.dim_inactive and p.muted or p.fg

  return {
    Normal = { fg = p.fg, bg = bg },
    NormalNC = { fg = nc_fg, bg = bg_nc },
    NormalFloat = { fg = p.fg, bg = p.bg_float },
    FloatBorder = { fg = p.muted, bg = p.bg_float },
    FloatTitle = { fg = p.accent, bg = p.bg_float, bold = true },

    Cursor = { fg = p.bg, bg = p.fg },
    CursorLine = { bg = p.cursorline },
    CursorColumn = { bg = p.cursorline },
    ColorColumn = { bg = p.colorcolumn },

    LineNr = { fg = p.muted },
    CursorLineNr = { fg = p.accent, bold = true },
    SignColumn = { fg = p.muted, bg = bg },
    FoldColumn = { fg = p.muted, bg = bg },
    Folded = { fg = p.fg, bg = p.bg_float },

    WinSeparator = { fg = p.bg_float },
    VertSplit = { link = 'WinSeparator' },

    StatusLine = { fg = p.statusline_fg, bg = p.statusline_bg },
    StatusLineNC = { fg = p.statusline_nc_fg, bg = p.statusline_nc_bg },
    TabLine = { fg = p.statusline_nc_fg, bg = p.statusline_nc_bg },
    TabLineSel = { fg = p.statusline_fg, bg = p.statusline_bg, bold = true },
    TabLineFill = { bg = p.bg_alt },

    Pmenu = { fg = p.fg, bg = p.pmenu },
    PmenuSel = { fg = p.bg, bg = p.accent, bold = true },
    PmenuSbar = { bg = p.pmenu },
    PmenuThumb = { bg = p.muted },

    Visual = { bg = p.selection },
    Search = { fg = p.fg, bg = p.search },
    IncSearch = { fg = p.bg, bg = p.incsearch },
    CurSearch = { link = 'IncSearch' },
    MatchParen = { fg = p.accent, bold = true },

    NonText = { fg = p.muted },
    SpecialKey = { fg = p.muted },
    Whitespace = { fg = p.bg_float },
    EndOfBuffer = { fg = bg_nc },

    MsgArea = { fg = p.fg },
    MsgSeparator = { fg = p.bg_float },
    ModeMsg = { fg = p.fg, bold = true },
    MoreMsg = { fg = p.green },
    Question = { fg = p.green },
    ErrorMsg = { fg = p.error },
    WarningMsg = { fg = p.warn },
    Title = { fg = p.accent, bold = true },
    Directory = { fg = p.blue },
    QuickFixLine = { bg = p.selection, bold = true },
    WinBar = { fg = p.fg, bg = bg },
    WinBarNC = { fg = nc_fg, bg = bg_nc },
  }
end
