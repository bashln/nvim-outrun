-- diffview.nvim
return function(p)
  return {
    DiffviewNormal = { fg = p.fg, bg = p.bg_alt },
    DiffviewFilePanelTitle = { fg = p.accent, bold = true },
    DiffviewFilePanelCounter = { fg = p.magenta },
    DiffviewFilePanelFileName = { fg = p.fg },
    DiffviewFilePanelSelected = { bg = p.selection, bold = true },
    DiffviewFilePanelPath = { fg = p.comment },
    DiffviewFilePanelRootPath = { fg = p.blue },
    DiffviewStatusAdded = { fg = p.green },
    DiffviewStatusModified = { fg = p.yellow },
    DiffviewStatusDeleted = { fg = p.red },
    DiffviewStatusRenamed = { fg = p.magenta },
    DiffviewStatusUntracked = { fg = p.cyan },
    DiffviewFilePanelInsertions = { fg = p.green },
    DiffviewFilePanelDeletions = { fg = p.red },
    DiffviewDiffAdd = { bg = p.diff_add },
    DiffviewDiffDelete = { bg = p.diff_delete },
    DiffviewDim1 = { fg = p.comment },
  }
end
