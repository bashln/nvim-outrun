-- LSP groups and LSP semantic tokens (linked to the treesitter captures).
return function(p)
  return {
    LspReferenceText = { bg = p.selection },
    LspReferenceRead = { bg = p.selection },
    LspReferenceWrite = { bg = p.selection, underline = true },
    LspSignatureActiveParameter = { fg = p.accent, bold = true },
    LspCodeLens = { fg = p.comment },
    LspInlayHint = { fg = p.comment, bg = p.bg_alt },
    LspFloatWinNormal = { bg = p.bg_float },
    LspFloatWinBorder = { fg = p.muted },

    ['@lsp.type.function'] = { link = '@function' },
    ['@lsp.type.method'] = { link = '@method' },
    ['@lsp.type.variable'] = { link = '@variable' },
    ['@lsp.type.parameter'] = { link = '@variable.parameter' },
    ['@lsp.type.property'] = { link = '@property' },
    ['@lsp.type.class'] = { link = '@type' },
    ['@lsp.type.struct'] = { link = '@type' },
    ['@lsp.type.enum'] = { link = '@type' },
    ['@lsp.type.interface'] = { link = '@type' },
    ['@lsp.type.type'] = { link = '@type' },
    ['@lsp.type.namespace'] = { link = '@namespace' },
    ['@lsp.type.string'] = { link = '@string' },
    ['@lsp.type.number'] = { link = '@number' },
    ['@lsp.type.keyword'] = { link = '@keyword' },
    ['@lsp.type.comment'] = { link = '@comment' },
    ['@lsp.type.operator'] = { link = '@operator' },

    ['@lsp.mod.readonly'] = { italic = true },
    ['@lsp.mod.deprecated'] = { strikethrough = true },
    ['@lsp.mod.static'] = { italic = true },
    ['@lsp.typemod.variable.defaultLibrary'] = { link = '@variable.builtin' },
  }
end
