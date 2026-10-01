-- Highlight registry. Each module returns `function(p, opts) -> table<string, spec>`.
-- Modules are merged in order, then styles, then the on_highlights hook.

local M = {}

local function hl(group, spec)
  vim.api.nvim_set_hl(0, group, spec)
end

-- name is also the key used in `opts.integrations`.
local modules = {
  { name = 'editor', mod = require('outrun.groups.editor') },
  { name = 'syntax', mod = require('outrun.groups.syntax') },
  { name = 'diagnostics', mod = require('outrun.groups.diagnostics') },
  { name = 'diff', mod = require('outrun.groups.diff') },
  { name = 'treesitter', mod = require('outrun.groups.treesitter') },
  { name = 'lsp', mod = require('outrun.groups.lsp') },
}

local plugins = {
  'snacks',
  'blink',
  'cmp',
  'noice',
  'notify',
  'bufferline',
  'lazy',
  'mason',
  'neo-tree',
  'trouble',
  'todo-comments',
  'ibl',
  'flash',
  'which-key',
  'gitsigns',
  'mini',
  'telescope',
  'nvim-tree',
  'fzf-lua',
  'oil',
  'aerial',
  'navic',
  'rainbow-delimiters',
  'illuminate',
  'scrollbar',
  'render-markdown',
  'dap',
  'dashboard',
  'hop',
  'neogit',
  'diffview',
}
for _, name in ipairs(plugins) do
  modules[#modules + 1] = { name = name, mod = require('outrun.groups.plugins.' .. name) }
end

local function enabled(name, opts)
  local v = opts.integrations[name]
  if v == nil then
    return true
  end
  return v
end

function M.apply(p, opts)
  local specs = {}
  for _, entry in ipairs(modules) do
    if enabled(entry.name, opts) then
      local t = entry.mod(p, opts)
      for group, spec in pairs(t) do
        specs[group] = spec
      end
    end
  end

  for group, style in pairs(opts.styles or {}) do
    specs[group] = vim.tbl_extend('force', specs[group] or {}, style)
  end

  if opts.on_highlights then
    opts.on_highlights(specs, p)
  end

  M.last = specs
  for group, spec in pairs(specs) do
    hl(group, spec)
  end
end

M.hl = hl

return M
