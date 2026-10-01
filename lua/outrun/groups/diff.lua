-- Diff and git-status groups.
return function(p)
  return {
    DiffAdd = { bg = p.diff_add },
    DiffChange = { bg = p.diff_change },
    DiffDelete = { fg = p.error, bg = p.diff_delete },
    DiffText = { bg = p.diff_text },

    Added = { fg = p.green },
    Changed = { fg = p.blue },
    Removed = { fg = p.red },
  }
end
