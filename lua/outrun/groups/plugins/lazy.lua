-- lazy.nvim
return function(p)
  return {
    LazyNormal = { fg = p.fg, bg = p.bg_float },
    LazyButton = { fg = p.fg, bg = p.bg_alt },
    LazyButtonActive = { fg = p.bg, bg = p.accent, bold = true },
    LazyH1 = { fg = p.bg, bg = p.accent, bold = true },
    LazyH2 = { fg = p.accent, bold = true },
    LazySpecial = { fg = p.magenta },
    LazyProgressDone = { fg = p.accent, bold = true },
    LazyProgressTodo = { fg = p.muted, bold = true },
    LazyCommit = { fg = p.green },
    LazyValue = { fg = p.cyan },
    LazyReasonPlugin = { fg = p.blue },
    LazyReasonStart = { fg = p.green },
    LazyReasonRuntime = { fg = p.orange },
    LazyReasonKeys = { fg = p.yellow },
    LazyReasonEvent = { fg = p.magenta },
    LazyReasonCmd = { fg = p.cyan },
    LazyReasonSource = { fg = p.blue },
    LazyReasonFt = { fg = p.hint },
    LazyDimmed = { fg = p.comment },
    LazyNoCond = { fg = p.comment },
    LazyProp = { fg = p.comment },
  }
end
