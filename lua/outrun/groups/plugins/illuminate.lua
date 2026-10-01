-- vim-illuminate
return function(p)
  return {
    IlluminatedWordText = { bg = p.selection },
    IlluminatedWordRead = { bg = p.selection },
    IlluminatedWordWrite = { bg = p.selection, underline = true },
  }
end
