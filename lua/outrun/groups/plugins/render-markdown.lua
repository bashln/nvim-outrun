-- render-markdown.nvim
return function(p)
  return {
    RenderMarkdownH1 = { fg = p.accent, bold = true },
    RenderMarkdownH1Bg = { fg = p.accent, bg = p.bg_alt, bold = true },
    RenderMarkdownH2 = { fg = p.magenta, bold = true },
    RenderMarkdownH2Bg = { fg = p.magenta, bg = p.bg_alt, bold = true },
    RenderMarkdownH3 = { fg = p.blue, bold = true },
    RenderMarkdownH3Bg = { fg = p.blue, bg = p.bg_alt, bold = true },
    RenderMarkdownH4 = { fg = p.cyan, bold = true },
    RenderMarkdownH4Bg = { fg = p.cyan, bg = p.bg_alt, bold = true },
    RenderMarkdownH5 = { fg = p.green, bold = true },
    RenderMarkdownH5Bg = { fg = p.green, bg = p.bg_alt, bold = true },
    RenderMarkdownH6 = { fg = p.yellow, bold = true },
    RenderMarkdownH6Bg = { fg = p.yellow, bg = p.bg_alt, bold = true },
    RenderMarkdownBullet = { fg = p.accent },
    RenderMarkdownDash = { fg = p.bg_float },
    RenderMarkdownQuote = { fg = p.comment },
    RenderMarkdownLink = { fg = p.blue, underline = true },
    RenderMarkdownCode = { bg = p.bg_alt },
    RenderMarkdownCodeBorder = { fg = p.muted, bg = p.bg_alt },
    RenderMarkdownTableHead = { fg = p.accent },
    RenderMarkdownTableRow = { fg = p.fg },
    RenderMarkdownHtml = { fg = p.orange },
    RenderMarkdownSign = { fg = p.muted },
    RenderMarkdownCheck = { fg = p.green },
  }
end
