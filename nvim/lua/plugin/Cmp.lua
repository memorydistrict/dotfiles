--+=+----------------+=+--
--+=+-: Plugin.Cmp :-+=+--
--+=+----------------+=+--

---@diagnostics disable: missing-fields
return {
    {
        'hrsh7th/nvim-cmp',
        event = { 'BufReadPost', 'BufNewFile' },
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            {
                'L3MON4D3/LuaSnip',
                version = 'v2.2',
                build = 'make install_jsregexp',
            },
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
            'onsails/lspkind.nvim',
            'windwp/nvim-ts-autotag',
            'windwp/nvim-autopairs',
        },
        config = function()
            local uc = {
                keymap = {
                    tools = {
                        nvim_cmp = require('user.config.keymap.tools.nvim_cmp')
                    },
                },
            }
            local cmp_autopairs = require('nvim-autopairs.completion.cmp')
            local cmp = require('cmp')
            local luasnip = require('luasnip')
            local lspkind = require('lspkind')

            require('nvim-autopairs').setup()

            --  Integrate nvim-autopairs with cmp
            cmp.event:on(
                'confirm_done',
                cmp_autopairs.on_confirm_done()
            )

            --  Load snippets
            require('luasnip.loaders.from_vscode').lazy_load()

            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert(
                    {
                        --  Previous suggestion
                        [uc.keymap.tools.nvim_cmp.suggestion.prev[1]] = cmp.mapping.select_prev_item(),
                        [uc.keymap.tools.nvim_cmp.suggestion.prev[2]] = cmp.mapping(
                            function(fallback)
                                if cmp.visible() then
                                    cmp.select_prev_item()
                                elseif luasnip.jumpable(-1) then
                                    luasnip.jump(-1)
                                else
                                    fallback()
                                end
                            end,
                            { 'i', 's' }
                        ),

                        --  Next suggestion
                        [uc.keymap.tools.nvim_cmp.suggestion.next[1]] = cmp.mapping.select_next_item(),
                        [uc.keymap.tools.nvim_cmp.suggestion.next[2]] = cmp.mapping(
                            function(fallback)
                                if cmp.visible() then
                                    cmp.select_next_item()
                                elseif luasnip.expand_or_jumpable() then
                                    luasnip.expand_or_jump()
                                else
                                    fallback()
                                end
                            end,
                            { 'i', 's' }
                        ),

                        --  Scroll preview
                        [uc.keymap.tools.nvim_cmp.ui.scroll.up] = cmp.mapping.scroll_docs(4),
                        [uc.keymap.tools.nvim_cmp.ui.scroll.down] = cmp.mapping.scroll_docs(-4),

                        --  Completion window
                        [uc.keymap.tools.nvim_cmp.ui.open] = cmp.mapping.complete({}),
                        [uc.keymap.tools.nvim_cmp.ui.close] = cmp.mapping.abort(),

                        --  Select suggestion
                        [uc.keymap.tools.nvim_cmp.suggestion.confirm] = cmp.mapping.confirm({ select = true }),
                    }
                ),

                --  Auto-completion sources
                sources = cmp.config.sources(
                    {
                        --  LSP
                        { name = 'nvim_lsp' },
                        --  Current buffer
                        { name = 'buffer', max_item_count = 5 },
                        --  Copilot
                        --  { name = 'copilot' },
                        --  File system paths
                        { name = 'path', max_item_count = 3 },
                        --  Snippets
                        { name = 'luasnip', max_item_count = 3 },
                    }
                ),
                formatting = {
                    expandable_indicator = true,
                    format = lspkind.cmp_format({
                        mode = 'symbol_text',
                        maxwidth = 50,
                        ellipsis_char = '...',
                        --  symbol_map = {
                            --  Copilot = '',
                        --  },
                    }),
                },
                experimental = {
                    --  Preview auto-complete suggestion
                    ghost_text = true,
                },
            })
        end,
    },
}

--  vim: ts=4 sts=4 sw=4 et
