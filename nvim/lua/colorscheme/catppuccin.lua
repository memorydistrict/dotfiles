--+=+----------------------------+=+--
--+=+-: Colorscheme.Catppuccin :-+=+--
--+=+----------------------------+=+--

local uc = {
    ui = {
        colorscheme = require('user.config.ui.colorscheme'),
    },
}

return {
    {
        'catppuccin/nvim',
        config = function()
            local _theme = 'macchiato'
            if (uc.ui.colorscheme.module.theme == 'latte') then
                _theme = 'latte'
            elseif (uc.ui.colorscheme.module.theme == 'frappe') then
                _theme = 'frappe'
            elseif (uc.ui.colorscheme.module.theme == 'macchiato') then
                _theme = 'macchiato'
            elseif (uc.ui.colorscheme.module.theme == 'mocha') then
                _theme = 'mocha'
            end

            local _styles = {
                comments = {},
                functions = {},
                keywords = {},
                statements = {},
                types = {},
            }

            if not uc.ui.colorscheme.text_style.comments.override then
                _styles.comments = { "italic" }
            else
                if (uc.ui.colorscheme.text_style.comments.bold) then
                    table.insert(_styles.comments, "bold")
                end
                if (uc.ui.colorscheme.text_style.comments.italic) then
                    table.insert(_styles.comments, "italic")
                end
            end

            if not uc.ui.colorscheme.text_style.functions.override then
                _styles.functions = {}
            else
                if (uc.ui.colorscheme.text_style.functions.bold) then
                    table.insert(_styles.functions, "bold")
                end
                if (uc.ui.colorscheme.text_style.functions.italic) then
                    table.insert(_styles.functions, "italic")
                end
            end

            if not uc.ui.colorscheme.text_style.keywords.override then
                _styles.keywords = {}
            else
                if (uc.ui.colorscheme.text_style.keywords.bold) then
                    table.insert(_styles.keywords, "bold")
                end
                if (uc.ui.colorscheme.text_style.keywords.italic) then
                    table.insert(_styles.keywords, "italic")
                end
            end

            if not uc.ui.colorscheme.text_style.statements.override then
                _styles.statements = { "italic" }
            else
                if (uc.ui.colorscheme.text_style.statements.bold) then
                    table.insert(_styles.statements, "bold")
                end
                if (uc.ui.colorscheme.text_style.statements.italic) then
                    table.insert(_styles.statements, "italic")
                end
            end

            if not uc.ui.colorscheme.text_style.types.override then
                _styles.types = {}
            else
                if (uc.ui.colorscheme.text_style.types.bold) then
                    table.insert(_styles.types, "bold")
                end
                if (uc.ui.colorscheme.text_style.types.italic) then
                    table.insert(_styles.types, "italic")
                end
            end

            require('catppuccin').setup({
                flavour = _theme,
                --background = { -- :h background
                --    light = "latte",
                --    dark = "mocha",
                --},
                transparent_background = uc.ui.colorscheme.background.transparent,
                show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
                term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
                dim_inactive = {
                    enabled = false, -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.15, -- percentage of the shade to apply to the inactive window
                },
                no_italic = false, -- Force no italic
                no_bold = false, -- Force no bold
                no_underline = false, -- Force no underline
                styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                    comments = _styles.comments,
                    conditionals = _styles.statements,
                    loops = _styles.statements,
                    functions = _styles.functions,
                    keywords = _styles.keywords,
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = _styles.types,
                    operators = {},
                    -- miscs = {}, -- Uncomment to turn off hard-coded styles
                },
                color_overrides = {},
                custom_highlights = {},
                default_integrations = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = false,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
            })
            vim.cmd.colorscheme('catppuccin')
        end,
    },
}

-- vim: ts=4 sts=4 sw=4 et
