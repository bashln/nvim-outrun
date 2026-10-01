-- oil.nvim
return function(p)
  return {
    OilDir = { fg = p.blue },
    OilDirIcon = { fg = p.blue },
    OilFile = { fg = p.fg },
    OilCreate = { fg = p.green },
    OilDelete = { fg = p.red },
    OilMove = { fg = p.yellow },
    OilCopy = { fg = p.cyan },
    OilChange = { fg = p.orange },
    OilType = { fg = p.magenta, italic = true },
    OilHidden = { fg = p.comment },
    OilLink = { fg = p.cyan, underline = true },
    OilLinkTarget = { fg = p.comment },
    OilTrash = { fg = p.error },
    OilTrashSourcePath = { fg = p.comment },
  }
end
