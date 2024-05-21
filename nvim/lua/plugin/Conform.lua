--+=+--------------------+=+--
--+=+-: Plugin.Conform :-+=+--
--+=+--------------------+=+--

return {
    {
        'stevearc/conform.nvim',
        event = { 'BufWritePre' },
        cmd = { 'ConformInfo' },
--        config = function()
--            require('conform').setup({
--                formatters_by_ft = {},
--                format_on_save = {
--                    lsp_fallback = true,
--                    timeout_ms = 500,
--                },
--                format_after_save = {
--                    lsp_fallback = true,
--                },
--                log_level = vim.log.levels.ERROR,
--                notify_on_error = false,
--                formatters = {
--                    my_formatter = {
--                        command = [[new_formatter]],
--                        args = {
--                            '--stdin-from-filename',
--                            '$FILENAME'
--                        },
--                        range_args = function(ctx)
--                            return { '--line-start', ctx.range.start[1], '--line-end', ctx.range['end'][1] }
--                        end,
--                        stdin = true,
--                        cwd = require('conform.util').root_file({
--                            '.editorconfig',
--                            'package.json'
--                        }),
--                        require_cwd = true,
--                        tmpfile_format = '.conform.$RANDOM.$FILENAME',
--                        condition = function(ctx)
--                            return vim.fs.basename(ctx.filename) ~= 'README.md'
--                        end,
--                        exit_codes = { 0, 1 }
--                        env = {
--                            VAR = 'value',
--                        },
--                        inherit = true,
--                        prepend_args = { '--use-tabs' },
--                    },
--                    other_formatter = function(bufnr)
--                        return {
--                            command = [[new_formatter]],
--                        }
--                    end,
--                },
--            })
--        end
        opts = {
            notify_on_error = false,
            format_on_save = {
                async = true,
                timeout_ms = 500,
                lsp_fallback = true,
            },
            formatters_by_ft = {
                javascript = { { 'prettierd', 'prettier' } },
                typescript = { { 'prettierd', 'prettier' } },
                typescriptreact = { { 'prettierd', 'prettier' } },
                lua = { 'stylua' },
            },
        },
    },
}

-- vim: ts=4 sts=4 sw=4 et
