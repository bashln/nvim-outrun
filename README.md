# nvim-outrun

Outrun for Neovim — a colorscheme generated from the palettes of
[100-themes](https://github.com/bjarneo/100-themes).

Ships five variants:

| Colorscheme | Background | Notes |
| --- | --- | --- |
| `outrun` | dark | the design palette |
| `outrun-day` | light | for bright rooms |
| `outrun-high-contrast` | dark | every ANSI color reaches WCAG AAA |
| `outrun-day-high-contrast` | light | every ANSI color reaches WCAG AAA |
| `outrun-oled` | pure black | panels stay off on OLED |

## Install

lazy.nvim:

```lua
{
  'bashln/nvim-outrun',
  priority = 1000,
  lazy = false,
  opts = {},
  config = function(_, opts)
    require('outrun').setup(opts)
    vim.cmd.colorscheme('outrun')
  end,
}
```

LazyVim — drop this in `lua/plugins/colorscheme.lua`:

```lua
return {
  {
    'bashln/nvim-outrun',
    priority = 1000,
    lazy = false,
    opts = {
      -- transparent = true,
      -- dim_inactive = true,
    },
    config = function(_, opts)
      require('outrun').setup(opts)
      vim.cmd.colorscheme('outrun')
    end,
  },
  {
    'LazyVim/LazyVim',
    opts = { colorscheme = 'outrun' },
  },
}
```

Then switch variants any time with `:colorscheme outrun-day`.

## Options

```lua
require('outrun').setup({
  transparent = false,
  dim_inactive = false,
  styles = {},
  on_highlights = nil,
  integrations = {},
  palette_overrides = {},
  terminal = true,
})
```

## Health

```
:checkhealth outrun
```

## License

MIT
