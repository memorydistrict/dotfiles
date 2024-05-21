--+=+--------------------------+=+--
--+=+-: Colorscheme.Kanagawa :-+=+--
--+=+--------------------------+=+--

--  TODO:   Map `transparent` to `user.config.ui.transparent_background`

--  Themes:     - 'wave'
--              - 'dragon'
--              - 'lotus'

local uc = {
    ui = {
        colorscheme = require('user.config.ui.colorscheme'),
    },
}

return {
    {
        'rebelot/kanagawa.nvim',
        config = function()
            local _theme = 'wave'
            if (uc.ui.colorscheme.module.theme == 'dragon') then
                _theme = 'dragon'
            elseif (uc.ui.colorscheme.module.theme == 'lotus') then
                _theme = 'lotus'
            elseif (uc.ui.colorscheme.module.theme == 'wave') then
                _theme = 'wave'
            end

            require('kanagawa').setup({
                compile = false,        -- enable compiling the colorscheme
                undercurl = true,       -- enable undercurls
                commentStyle = (not uc.ui.colorscheme.text_style.comments.override and {} or {
                    bold = uc.ui.colorscheme.text_style.comments.bold,
                    italic = uc.ui.colorscheme.text_style.comments.italic,
                }),
                functionStyle = (not uc.ui.colorscheme.text_style.functions.override and {} or {
                    bold = uc.ui.colorscheme.text_style.functions.bold,
                    italic = uc.ui.colorscheme.text_style.functions.italic,
                }),
                keywordStyle = (not uc.ui.colorscheme.text_style.keywords.override and {} or {
                    bold = uc.ui.colorscheme.text_style.keywords.bold,
                    italic = uc.ui.colorscheme.text_style.keywords.italic,
                }),
                statementStyle = (not uc.ui.colorscheme.text_style.statements.override and {} or {
                    bold = uc.ui.colorscheme.text_style.statements.bold,
                    italic = uc.ui.colorscheme.text_style.statements.italic,
                }),
                typeStyle = (not uc.ui.colorscheme.text_style.types.override and {} or {
                    bold = uc.ui.colorscheme.text_style.types.bold,
                    italic = uc.ui.colorscheme.text_style.types.italic,
                }),
                transparent = uc.ui.colorscheme.background.transparent,
                dimInactive = false,    -- dim inactive window `:h hl-NormalNC`
                terminalColors = true,   -- define vim.g.terminal_color_{0,17}
                colors = {              -- add/modify theme and palette colors
                    palette = {},
                    theme = {
                        wave = {},
                        lotus = {},
                        dragon = {},
                        all = {},
                    },
                },
                overrides = function(colors)
                    return {
                        NormalFloat = { bg = 'none' },
                        FloatBorder = { bg = 'none' },
                        FloatTitle = { bg = 'none' },
                    }
                end,
                --  Load `theme` when `background` is not set
                theme = _theme,
                --background = {
                --    dark = 'wave',
                --    light = 'lotus',
                --},
            })

            vim.cmd.colorscheme('kanagawa')
        end,
    },
}

-- vim: ts=4 sts=4 sw=4 et
