-- nvim-scrollbar
return function(p)
  return {
    ScrollbarHandle = { fg = p.muted, bg = p.bg_alt },
    ScrollbarCursor = { fg = p.accent, bg = p.bg_alt },
    ScrollbarCursorHandle = { fg = p.accent, bg = p.bg_alt },
    ScrollbarError = { fg = p.error },
    ScrollbarWarn = { fg = p.warn },
    ScrollbarInfo = { fg = p.info },
    ScrollbarHint = { fg = p.hint },
    ScrollbarSearch = { fg = p.yellow },
    ScrollbarErrorHandle = { fg = p.error, bg = p.bg_alt },
    ScrollbarWarnHandle = { fg = p.warn, bg = p.bg_alt },
    ScrollbarInfoHandle = { fg = p.info, bg = p.bg_alt },
    ScrollbarHintHandle = { fg = p.hint, bg = p.bg_alt },
    ScrollbarSearchHandle = { fg = p.yellow, bg = p.bg_alt },
    ScrollbarMisc = { fg = p.comment },
    ScrollbarMiscHandle = { fg = p.comment, bg = p.bg_alt },
  }
end
