-- nvim-tree.lua
return function(p)
  return {
    NvimTreeNormal = { fg = p.fg, bg = p.bg_alt },
    NvimTreeNormalNC = { fg = p.fg, bg = p.bg_alt },
    NvimTreeWinSeparator = { fg = p.bg_alt, bg = p.bg_alt },
    NvimTreeRootFolder = { fg = p.accent, bold = true },
    NvimTreeFolderIcon = { fg = p.blue },
    NvimTreeFolderName = { fg = p.blue },
    NvimTreeOpenedFolderName = { fg = p.accent, bold = true },
    NvimTreeEmptyFolderName = { fg = p.comment },
    NvimTreeSymlink = { fg = p.cyan },
    NvimTreeExecFile = { fg = p.green },
    NvimTreeImageFile = { fg = p.magenta },
    NvimTreeSpecialFile = { fg = p.orange, underline = true },
    NvimTreeIndentMarker = { fg = p.bg_float },
    NvimTreeCursorLine = { bg = p.selection },
    NvimTreeGitDirty = { fg = p.yellow },
    NvimTreeGitStaged = { fg = p.green },
    NvimTreeGitMerge = { fg = p.orange },
    NvimTreeGitRenamed = { fg = p.magenta },
    NvimTreeGitNew = { fg = p.green },
    NvimTreeGitDeleted = { fg = p.red },
    NvimTreeWindowPicker = { fg = p.bg, bg = p.accent, bold = true },
    NvimTreeFileIcon = { fg = p.fg },
    NvimTreeOpenedFile = { fg = p.fg },
  }
end
