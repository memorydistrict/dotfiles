--+=+-----------------------+=+--
--+=+-: Plugin.Treesitter :-+=+--
--+=+-----------------------+=+--

--  TODO:       Map keymaps to user.config.keymaps
--  WARNING:    tree-sitter executable not found (only required for :TSInstallFromGrammar)

return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = function()
            require('nvim-treesitter.install').update({
                with_sync = true
            })
        end,
        event = { 'BufReadPost', 'BufWritePost', 'BufNewFile', 'VeryLazy' },
        cmd = { 'TSInstall', 'TSUpdate', 'TSUpdateSync', },
        dependencies = {
            --  Additional text objects for treesitter
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        config = function()
            ---@diagnostic disable: missing-fields
            require('nvim-treesitter.configs').setup({
                ensure_installed = {
                    'bash',
                    'c',
                    'c_sharp',
                    'cpp',
                    'css',
                    'csv',
                    'go',
                    'html',
                    'http',
                    'javascript',
                    'json',
                    'lua',
                    'markdown',
                    'nix',
                    'php',
                    'python',
                    'rust',
                    'scss',
                    'sql',
                    'toml',
                    'tsv',
                    'typescript',
                    'vim',
                    'vimdoc',
                    'xml',
                },
                sync_install = false,
                highlight = {
                    enable = true,
                    disable = {},
                },
                indent = {
                    enable = true,
                    disable = {},
                },
                autopairs = {
                    enable = true,
                    disable = {},
                },
                autotag = {
                    enable = true,
                    disable = {},
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = '<c-space>',
                        node_incremental = '<c-space>',
                        scope_incremental = '<c-s>',
                        node_decremental = '<c-backspace>',
                    },
                },
                textobjects = {
                    select = {
                        enable = true,
                        --  Automatically jump forward to textobjects
                        --  Similar to targets.vim
                        lookahead = true,
                        keymaps = {
                            --  Capture groups available in textobjects.scm
                            ['aa'] = '@parameter.outer',
                            ['ia'] = '@parameter.inner',
                            ['af'] = '@function.outer',
                            ['if'] = '@function.inner',
                            ['ac'] = '@class.outer',
                            ['ic'] = '@class.inner',
                        },
                    },
                    move = {
                        enable = true,
                        set_jumps = true,
                        goto_next_start = {
                            [']m'] = '@function.outer',
                            [']]'] = '@class.outer',
                        },
                        goto_next_end = {
                            [']M'] = '@function.outer',
                            [']['] = '@class.outer',
                        },
                        goto_previous_start = {
                            ['[m'] = '@function.outer',
                            ['[['] = '@class.outer',
                        },
                        goto_previous_end = {
                            ['[M'] = '@function.outer',
                            ['[]'] = '@class.outer',
                        },
                    },
                },
            })
        end,
    },
}
