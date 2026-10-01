-- Classic (:h highlight) syntax groups.
return function(p)
  return {
    Comment = { fg = p.comment, italic = true },

    Constant = { fg = p.constant },
    String = { fg = p.string },
    Character = { fg = p.string },
    Number = { fg = p.number },
    Boolean = { fg = p.number },
    Float = { fg = p.number },

    Identifier = { fg = p.variable },
    Function = { fg = p.func },

    Statement = { fg = p.keyword },
    Conditional = { fg = p.keyword },
    Repeat = { fg = p.keyword },
    Label = { fg = p.keyword },
    Operator = { fg = p.operator },
    Keyword = { fg = p.keyword },
    Exception = { fg = p.keyword },

    PreProc = { fg = p.magenta },
    Include = { link = 'PreProc' },
    Define = { fg = p.keyword },
    Macro = { fg = p.orange },
    PreCondit = { fg = p.keyword },

    Type = { fg = p.type_ },
    StorageClass = { fg = p.type_ },
    Structure = { fg = p.type_ },
    Typedef = { fg = p.type_ },

    Special = { fg = p.special },
    SpecialChar = { fg = p.special },
    Tag = { fg = p.keyword },
    Delimiter = { fg = p.fg },
    SpecialComment = { fg = p.comment, bold = true },
    Debug = { fg = p.orange },

    Underlined = { underline = true },
    Ignore = { fg = p.bg_float },
    Error = { fg = p.error },
    Todo = { fg = p.bg, bg = p.yellow, bold = true },
  }
end
