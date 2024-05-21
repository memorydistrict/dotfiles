--+=+--------------------+=+--
--+=+-: Plugin.NeoTree :-+=+--
--+=+--------------------+=+--

--  TODO:   Write conditional for `open_(v)split`, based on aspect ratio of current window
--  FIX:    NeoTree is only present on the tab in which it was initialized (ie. new tabs don't run the same instance of NeoTree)

return {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
    },
    config = function()
        local uc = {
            keymap = {
                tools = {
                    neotree = require('user.config.keymap.tools.neotree'),
                },
            },
        }

        require('neo-tree').setup({
            close_if_last_window = true,
            popup_border_style = 'rounded',
            sort_case_insensitive = true,
            source_selector = {
                winbar = true,
                statusline = false,
            },
            window = {
                position = 'left',
                width = 45,
                mappings = {
                    --  New
                    [uc.keymap.tools.neotree.new.file] = {
                        'add',
                        config = {
                            show_path = 'none'
                        },
                    },
                    --  Open
                    [uc.keymap.tools.neotree.open.buffer.new_tab] = 'open_tabnew',
                    [uc.keymap.tools.neotree.open.buffer.replace_last] = 'open',
                    [uc.keymap.tools.neotree.open.buffer.new_split] = 'open_vsplit',
                    --  View
                    [uc.keymap.tools.neotree.view.refresh] = 'refresh',
                    [uc.keymap.tools.neotree.view.focus.filesystem] = function()
                        vim.api.nvim_exec('Neotree focus filesystem left', true)
                    end,
                    [uc.keymap.tools.neotree.view.focus.buffers] = function()
                        vim.api.nvim_exec('Neotree focus buffers left', true)
                    end,
                    [uc.keymap.tools.neotree.view.focus.git_status] = function()
                        vim.api.nvim_exec('Neotree focus git_status left', true)
                    end,
                },
            },
        })
    end,
}

--  vim: ts=4 sts=4 sw=4 et
