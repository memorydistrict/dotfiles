--+=+----------------------+=+--
--+=+-: Plugin.LspConfig :-+=+--
--+=+----------------------+=+--

--  TODO:   Replace with 'nvimdev/lspsaga.nvim'

return {
    {
        'neovim/nvim-lspconfig',
        event = { 'BufReadPost' },
        cmd = {
            'LspInfo',
            'LspInstall',
            'LspUninstall',
            'Mason'
        },
        dependencies = {
            --  Plugin(s) and UI to automatically install LSPs to stdpath
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'WhoIsSethDaniel/mason-tool-installer.nvim',

            --  Install LSP autocompletions
            'hrsh7th/cmp-nvim-lsp',

            --  Progress/Status update for LSP
            {
                'j-hui/fidget.nvim',
                opts = {},
            },
        },
        config = function()
            --  Keymapping
            local uc = {
                keymap = {
                    tools = {
                        lsp = require('user.config.keymap.tools.lsp')
                    },
                },
            }
            local map_lsp_keybinds = function(buffer_number)
                nnoremap(
                    uc.keymap.tools.lsp.rename,
                    vim.lsp.buf.rename,
                    { buffer = buffer_number }
                )
                nnoremap(
                    uc.keymap.tools.lsp.code_action,
                    vim.lsp.buf.code_action,
                    { buffer = buffer_number }
                )
                nnoremap(
                    uc.keymap.tools.lsp.goto.definition,
                    vim.lsp.buf.definition,
                    { buffer = buffer_number }
                )
                nnoremap(
                    uc.keymap.tools.lsp.documentation.hover,
                    vim.lsp.buf.hover,
                    { buffer = buffer_number }
                )
                nnoremap(
                    uc.keymap.tools.lsp.documentation.signature[1],
                    vim.lsp.buf.signature_help,
                    { buffer = buffer_number }
                )
                nnoremap(
                    uc.keymap.tools.lsp.documentation.signature[2],
                    vim.lsp.buf.signature_help,
                    { buffer = buffer_number }
                )
                nnoremap(
                    uc.keymap.tools.lsp.goto.declaration,
                    vim.lsp.buf.declaration,
                    { buffer = buffer_number }
                )
                nnoremap(
                    uc.keymap.tools.lsp.type_definition,
                    vim.lsp.buf.type_definition,
                    { buffer = buffer_number }
                )
                --  Telescope LSP keybinds
                nnoremap(
                    uc.keymap.tools.lsp.goto.references,
                    require('telescope.builtin').lsp_references,
                    { buffer = buffer_number }
                )
                nnoremap(
                    uc.keymap.tools.lsp.goto.implementations,
                    require('telescope.builtin').lsp_implementations,
                    { buffer = buffer_number }
                )
                nnoremap(
                    uc.keymap.tools.lsp.symbols.buffer,
                    require('telescope.builtin').lsp_document_symbols,
                    { buffer = buffer_number }
                )
                nnoremap(
                    uc.keymap.tools.lsp.symbols.project,
                    require('telescope.builtin').lsp_workspace_symbols,
                    { buffer = buffer_number }
                )
            end

            --  Override tsserver diagnostics to filter out specific messages
            --  NOTE:   Examples commented
            local messages_to_filter = {
                --  "This may be converted to an async function.",
                --  "'_Assertion' is declared by never used",
                --  "'__Assertion' is declared but never used",
                --  "The signature '(data: string): string' of 'atob' is depreciated.",
                --  "The signature '(data: string): string' of 'btoa' is depreciated.",
            }
            local function tsserver_on_publish_diagnostics_override(_, result, ctx, config)
                local filtered_diagnostics = {}

                for _, diagnostic in ipairs(result.diagnostics) do
                    local found = false

                    for _, message in ipairs(messages_to_filter) do
                        if diagnostic.message == message then
                            found = true
                            break
                        end
                    end
                    if not found then
                        table.insert(filtered_diagnostics, diagnostic)
                    end
                end
                result.diagnostics = filtered_diagnostics
                vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)
            end
            --  Default handlers for LSP
            local default_handlers = {
                ['textDocument/hover'] = vim.lsp.with(
                    vim.lsp.handlers.hover,
                    { border = 'rounded' }
                ),
                ['textDocument/signatureHelp'] = vim.lsp.with(
                    vim.lsp.handlers.signature_help,
                    { border = 'rounded' }
                ),
            }
            --  Function to run when Neovim connects to an LSP client
            ---@diagnostic disable-next-line: unused-local
            local on_attach = function(_client, buffer_number)
                --  Pass the current buffer to map LSP keybinds
                map_lsp_keybinds(buffer_number)
            end
            --  LSP servers and clients are able to communicate what features they support
            --  Neovim doesn't support eveything in the LSP Specification by default
            --  When you add nvim-cmp, luasnip, etc. Neovim now has more capabilities
            --  New capabilities are created with nvim-cmp, and broadcasted to the servers
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities = vim.tbl_deep_extend(
                'force',
                capabilities,
                require('cmp_nvim_lsp').default_capabilities()
            )
            --  LSP servers to install
            --  See: https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
            local servers = {
                bashls = {},
                cssls = {},
                gleam = {},
                eslint = {
                    cmd = {
                        'vscode-eslint-language-server',
                        '--stdio',
                        '--max-old-space-size=12288'
                    },
                    settings = {
                        format = false,
                    },
                },
                html = {},
                jsonls = {},
                lua_ls = {
                    {
                        settings = {
                            Lua = {
                                runtime = { version = 'LuaJIT' },
                                workspace = {
                                    checkThirdParty = false,
                                    library = {
                                        '${3rd}/luv/library',
                                        unpack(vim.api.nvim_get_runtime_file(
                                            '',
                                            true
                                        )),
                                    },
                                },
                                telemetry = {
                                    enabled = false,
                                },
                            },
                        },
                    },
                },
                marksman = {},
                ocamllsp = {},
                nil_ls = {},
                pyright = {},
                sqlls = {},
                tailwindcss = {},
                tsserver = {
                    settings = {
                        maxTsServerMemory = 12288,
                    },
                    handlers = {
                        ['textDocument/publishDiagnostics'] = vim.lsp.with(
                            tsserver_on_publish_diagnostics_override,
                            {}
                        ),
                    },
                },
                yamlls = {},
            }
            local formatters = {
                prettierd = {},
                stylua = {},
            }
            local manually_installed_servers = {
                'ocamllsp',
                'gleam'
            }
            local mason_tools_to_install = vim.tbl_keys(vim.tbl_deep_extend(
                'force',
                {},
                servers,
                formatters
            ))
            local ensure_installed = vim.tbl_filter(function(name)
                return not vim.tbl_contains(manually_installed_servers, name)
            end, mason_tools_to_install)

            require('mason-tool-installer').setup({
                auto_update = true,
                run_on_start = true,
                start_delay = 3000,
                debounce_hours = 12,
                ensure_installed = ensure_installed,
            })

            --  Iterate over our servers and set them up
            for name, config in pairs(servers) do
                require('lspconfig')[name].setup({
                    cmd = config.cmd,
                    capabilities = capabilities,
                    filetypes = config.filetypes,
                    handlers = vim.tbl_deep_extend(
                        'force',
                        {},
                        default_handlers,
                        config.handlers or {}
                    ),
                    on_attach = on_attach,
                    settings = config.settings,
                })
            end

            --  Setup Mason to manage 3rd party LSP servers
            require('mason').setup({
                ui = {
                    border = 'rounded',
                },
            })

            require('mason-lspconfig').setup()

            --  Configure border for LspInfo UI
            require('lspconfig.ui.windows').default_options.border = 'rounded'

            --  Configure diagnostics border
            vim.diagnostic.config({
                float = {
                    border = 'rounded',
                },
            })
        end,
    },
}

-- vim: ts=4 sts=4 sw=4 et
