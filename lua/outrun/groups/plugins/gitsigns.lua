-- gitsigns.nvim
return function(p)
  return {
    GitSignsAdd = { fg = p.green },
    GitSignsChange = { fg = p.yellow },
    GitSignsDelete = { fg = p.red },
    GitSignsTopdelete = { fg = p.red },
    GitSignsChangedelete = { fg = p.orange },
    GitSignsUntracked = { fg = p.cyan },
    GitSignsAddNr = { fg = p.green },
    GitSignsChangeNr = { fg = p.yellow },
    GitSignsDeleteNr = { fg = p.red },
    GitSignsTopdeleteNr = { fg = p.red },
    GitSignsChangedeleteNr = { fg = p.orange },
    GitSignsUntrackedNr = { fg = p.cyan },
    GitSignsAddLn = { bg = p.diff_add },
    GitSignsChangeLn = { bg = p.diff_change },
    GitSignsTopdeleteLn = { bg = p.diff_delete },
    GitSignsDeleteLn = { bg = p.diff_delete },
    GitSignsChangedeleteLn = { bg = p.diff_change },
    GitSignsUntrackedLn = { bg = p.diff_add },
    GitSignsAddInline = { bg = p.diff_add },
    GitSignsChangeInline = { bg = p.diff_change },
    GitSignsDeleteInline = { bg = p.diff_delete },
    GitSignsCurrentLineBlame = { fg = p.comment, italic = true },
  }
end
