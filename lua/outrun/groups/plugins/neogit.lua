-- neogit
return function(p)
  return {
    NeogitNormal = { fg = p.fg, bg = p.bg_alt },
    NeogitBranch = { fg = p.accent, bold = true },
    NeogitRemote = { fg = p.magenta },
    NeogitHunkHeader = { fg = p.fg, bg = p.bg_float },
    NeogitHunkHeaderHighlight = { fg = p.accent, bg = p.bg_float, bold = true },
    NeogitDiffContextHighlight = { bg = p.bg_float },
    NeogitDiffAddHighlight = { fg = p.green, bg = p.diff_add },
    NeogitDiffDeleteHighlight = { fg = p.red, bg = p.diff_delete },
    NeogitDiffAdd = { fg = p.green },
    NeogitDiffDelete = { fg = p.red },
    NeogitChangeAdded = { fg = p.green },
    NeogitChangeModified = { fg = p.yellow },
    NeogitChangeDeleted = { fg = p.red },
    NeogitChangeRenamed = { fg = p.magenta },
    NeogitChangeUpdated = { fg = p.orange },
  }
end
