-- nvim-navic
return function(p)
  return {
    NavicText = { fg = p.fg },
    NavicSeparator = { fg = p.comment },
    NavicIconsFile = { fg = p.fg },
    NavicIconsModule = { fg = p.cyan },
    NavicIconsNamespace = { fg = p.blue },
    NavicIconsClass = { fg = p.type_ },
    NavicIconsMethod = { fg = p.func },
    NavicIconsFunction = { fg = p.func },
    NavicIconsVariable = { fg = p.variable },
    NavicIconsProperty = { fg = p.property },
    NavicIconsField = { fg = p.property },
    NavicIconsConstant = { fg = p.constant },
  }
end
