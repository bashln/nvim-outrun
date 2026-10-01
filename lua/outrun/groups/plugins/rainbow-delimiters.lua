-- rainbow-delimiters.nvim
return function(p)
  return {
    RainbowDelimiterRed = { fg = p.red },
    RainbowDelimiterOrange = { fg = p.orange },
    RainbowDelimiterYellow = { fg = p.yellow },
    RainbowDelimiterGreen = { fg = p.green },
    RainbowDelimiterBlue = { fg = p.blue },
    RainbowDelimiterViolet = { fg = p.magenta },
    RainbowDelimiterCyan = { fg = p.cyan },
  }
end
