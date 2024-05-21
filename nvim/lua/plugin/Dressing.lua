--+=+---------------------+=+--
--+=+-: Plugin.Dressing :-+=+--
--+=+---------------------+=+--

return {
    {
        'stevearc/dressing.nvim',
        config = function()
            local _config = {
                --  'left', 'right', 'center'
                title_position = [[left]]
            }
            require('dressing').setup({
                input = {
                    --  Set to false to disable the `vim.ui.input` implementation
                    enabled = true,
                    --  Default prompt string
                    default_prompt = 'Input',
                    --  Trim trailing `:` from prompt
                    trim_prompt = true,
                    title_pos = _config.title_position,
                    --  When `true`, `<Esc>` will close the modal
                    insert_only = true,
                    --  When `true`, input will start in INSERT mode
                    start_in_insert = true,
                    border = 'rounded',
                    relative = 'cursor',
                    --  Can be expressed as an integer, OR
                    --  A float between 0 and 1, representing a percentage
                    prefer_width = 40,
                    width = nil,
                    --  `min` and `max` can be a list of mixed options
                    --  The greater value takes precedent
                    min_width = { 140, 0.9 },
                    max_width = { 20, 0.2 },
                    buf_options = {},
                    win_options = {
                        --  Disable line wrapping
                        wrap = false,
                        --  Indicator for when text exceeds window
                        list = true,
                        listchars = 'precedes:…,extends:…',
                        --  Increase this for more context when text scrolls off the window
                        sidescrolloff = 0
                    },
                    mappings = {
                        n = {
                            ['<Esc>'] = 'Close',
                            ['<CR>'] = 'Confirm',
                        },
                        i = {
                            ['<C-c>'] = 'Close',
                            ['<CR>'] = 'Confirm',
                            ['<Up>'] = 'HistoryPrev',
                            ['<Down>'] = 'HistoryNext',
                        },
                    },

                    override = function(conf)
                        --  This is the config that will be passed to `nvim_open_win`
                        --  Change values here to customize the layout
                        return conf
                    end,
                    -- See `:help dressing_get_config`
                    get_config = nil,
                },
                select = {
                    --  Set to false to disable the `vim.ui.select` implementation
                    enabled = true,
                    --  Priority list of preferred `vim.select` implementations
                    backend = {
                        'telescope',
                        'fzf_lua',
                        'fzf',
                        'builtin',
                        'nui'
                    },
                    --  Trim trailing `:` from prompt
                    trim_prompt = true,

                    --  `telescope` options
                    telescope = nil,

                    --  `fzf` options
                    fzf = {
                        window = {
                            width = 0.5,
                            height = 0.4
                        },
                    },

                    --  `fzf-lua` options
                    fzf_lua = {},

                    --  `nui` options
                    nui = {
                        position = '50%',
                        size = nil,
                        relative = 'editor',
                        border = {
                            style = 'rounded',
                        },
                        buf_options = {
                            swapfile = false,
                            filetype = 'DressingSelect',
                        },
                        win_options = {
                            winblend = 0,
                        },
                        min_width = 40,
                        min_height = 10,
                        max_width = 80,
                        max_height = 40,
                    },

                    --  `builtin` options
                    builtin = {
                        --  Display numbers for options and set up keymaps
                        show_numbers = true,
                        --  These are passed to `nvim_open_win`
                        border = 'rounded',
                        --  `editor` and `win` will default to being centered
                        relative = 'editor',

                        buf_options = {},
                        win_options = {
                            cursorline = true,
                            cursorlineopt = 'both',
                        },

                        --  Can be expressed as an integer, OR
                        --  A float between 0 and 1, representing a percentage
                        width = nil,
                        height = nil,
                        min_width = { 40, 0.2 },
                        min_height = { 10, 0.2 },
                        max_width = { 140, 0.8 },
                        max_height = 0.9,

                        --  Set to `false` to disable
                        mappings = {
                            ['<Esc>'] = 'Close',
                            ['<C-c>'] = 'Close',
                            ['<CR>'] = 'Confirm',
                        },
                        override = function(conf)
                            --  This is the config that will be passed to `nvim_open_win`
                            --  Change values here to customize the layout
                            return conf
                        end,
                    },

                    --  Used to override format_item
                    --  See `:help dressing-format`
                    format_item_override = {},

                    --  See `:help dressing_get_config`
                    get_config = nil,
                },
            })
        end
    },
}

--  vim: ts=4 sts=4 sw=4 et
