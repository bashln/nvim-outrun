-- Test runner for Outrun (outrun). Run:
--   nvim --headless -l test/run.lua
--
-- Exits nonzero on the first failed assertion.

local slug = 'outrun'

-- Put the plugin root on the runtimepath so `require(slug)` resolves.
local here = vim.fn.fnamemodify(debug.getinfo(1, 'S').source:sub(2), ':p:h')
vim.opt.runtimepath:prepend(vim.fn.fnamemodify(here, ':h'))

local expected = {
  [slug] = 'dark',
  [slug .. '-day'] = 'light',
  [slug .. '-high-contrast'] = 'dark',
  [slug .. '-day-high-contrast'] = 'light',
  [slug .. '-oled'] = 'dark',
}

local mod = require(slug)
local palette = mod.palette()

assert(type(palette) == 'table', 'palette() must return a table')
assert(palette[slug], 'default colorscheme missing from palette')

local count = 0
local required = dofile(here .. '/required_groups.lua')
for name, mode in pairs(expected) do
  vim.cmd.colorscheme(name)
  assert(
    vim.g.colors_name == name,
    'colors_name: ' .. tostring(vim.g.colors_name) .. ' ~= ' .. name
  )
  assert(vim.o.background == mode, name .. ': background ' .. vim.o.background .. ' ~= ' .. mode)
  local normal = vim.api.nvim_get_hl(0, { name = 'Normal' })
  assert(normal.fg and normal.bg, name .. ': Normal missing fg/bg')
  local applied = require(slug .. '.groups').last
  assert(applied, 'groups module does not expose `last`')
  for _, group in ipairs(required) do
    assert(applied[group], name .. ': group not set by theme: ' .. group)
    local spec = vim.api.nvim_get_hl(0, { name = group, link = false })
    assert(spec and next(spec) ~= nil, name .. ': group not defined: ' .. group)
  end
  count = count + 1
end

vim.cmd.colorscheme(slug)
local term = palette[slug].term
assert(vim.g.terminal_color_0 == term[1], 'terminal_color_0 mismatch')
assert(vim.g.terminal_color_15 == term[16], 'terminal_color_15 mismatch')

local ok, err = pcall(mod.load, 'nao-existe')
assert(not ok, 'load() with an unknown name must error')
assert(err:lower():match('valid'), 'error must list valid names: ' .. tostring(err))

local groups = require(slug .. '.groups')
local function hex(color)
  return tonumber(color:sub(2), 16)
end

-- transparent
mod.setup({ transparent = true })
vim.cmd.colorscheme(slug)
assert(
  vim.api.nvim_get_hl(0, { name = 'Normal' }).bg == nil,
  'transparent: Normal.bg must be unset'
)

-- styles
mod.setup({ styles = { Comment = { italic = false } } })
vim.cmd.colorscheme(slug)
assert(not vim.api.nvim_get_hl(0, { name = 'Comment' }).italic, 'styles: Comment italic disabled')

-- integrations
mod.setup({ integrations = { telescope = false } })
vim.cmd.colorscheme(slug)
assert(groups.last['TelescopeNormal'] == nil, 'integrations: telescope disabled')
assert(groups.last['SnacksDashboardNormal'] ~= nil, 'integrations: snacks still enabled')

-- on_highlights (override + new group)
local called = false
mod.setup({
  on_highlights = function(hl, pal)
    assert(pal.accent, 'on_highlights receives the palette')
    hl.Normal = { fg = '#ff0000' }
    hl.MeuGrupo = { fg = '#00ff00' }
    called = true
  end,
})
vim.cmd.colorscheme(slug)
assert(called, 'on_highlights was called')
assert(vim.api.nvim_get_hl(0, { name = 'Normal' }).fg == 0xff0000, 'on_highlights overrides Normal')
assert(
  vim.api.nvim_get_hl(0, { name = 'MeuGrupo' }).fg == 0x00ff00,
  'on_highlights creates a new group'
)

-- palette_overrides
mod.setup({ palette_overrides = { [slug] = { accent = '#00ff00' } } })
vim.cmd.colorscheme(slug)
assert(
  vim.api.nvim_get_hl(0, { name = 'CursorLineNr' }).fg == 0x00ff00,
  'palette_overrides accent propagates'
)

-- terminal
vim.g.terminal_color_0 = nil
mod.setup({ terminal = false })
vim.cmd.colorscheme(slug)
assert(vim.g.terminal_color_0 == nil, 'terminal=false skips terminal colors')

-- dim_inactive
mod.setup({ dim_inactive = true })
vim.cmd.colorscheme(slug)
local palette_default = mod.palette()[slug]
assert(
  vim.api.nvim_get_hl(0, { name = 'NormalNC' }).fg == hex(palette_default.muted),
  'dim_inactive: NormalNC uses the muted role'
)

mod.setup({})

-- Robustness: repeated loads under option combinations must not error.
local combos = {
  {},
  { transparent = true },
  { dim_inactive = true },
  { styles = { Comment = { italic = false }, Function = { bold = true } } },
  { transparent = true, dim_inactive = true, terminal = false },
}
for _ = 1, 5 do
  for _, opts in ipairs(combos) do
    mod.setup(opts)
    for name in pairs(expected) do
      vim.cmd.colorscheme(name)
    end
  end
end
mod.setup({})

-- Snapshots
local update = os.getenv('UPDATE_SNAPSHOTS') == '1'
for _, a in ipairs(vim.v.argv) do
  if a == '--update' then
    update = true
  end
end

local names = {}
for name in pairs(palette) do
  names[#names + 1] = name
end
table.sort(names)

local function dump()
  local lines = {}
  for group in pairs(groups.last) do
    local s = vim.api.nvim_get_hl(0, { name = group, link = false })
    lines[#lines + 1] = ('%s fg=%s bg=%s sp=%s b=%d i=%d u=%d uc=%d'):format(
      group,
      tostring(s.fg),
      tostring(s.bg),
      tostring(s.sp),
      s.bold and 1 or 0,
      s.italic and 1 or 0,
      s.underline and 1 or 0,
      s.undercurl and 1 or 0
    )
  end
  table.sort(lines)
  return lines
end

local snap_dir = here .. '/snapshots'
if update then
  vim.fn.mkdir(snap_dir, 'p')
end
for _, name in ipairs(names) do
  vim.cmd.colorscheme(name)
  local lines = dump()
  local path = snap_dir .. '/' .. name .. '.txt'
  if update then
    vim.fn.writefile(lines, path)
  else
    local saved = vim.fn.readfile(path)
    assert(#saved > 0, name .. ': missing snapshot at ' .. path)
    local same = #lines == #saved
    if same then
      for i = 1, #lines do
        if lines[i] ~= saved[i] then
          same = false
          break
        end
      end
    end
    assert(same, name .. ': snapshot mismatch, run with --update')
  end
end
mod.setup({})

print(('ok: %d colorschemes, groups, terminal, errors, setup, snapshots'):format(count))
