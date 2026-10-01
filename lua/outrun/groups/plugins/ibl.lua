-- indent-blankline.nvim
return function(p)
  return {
    IblIndent = { fg = p.bg_float },
    IblScope = { fg = p.accent },
    IblWhitespace = { fg = p.bg_float },
  }
end
