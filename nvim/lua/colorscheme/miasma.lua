--+=+------------------------+=+--
--+=+-: Colorscheme.Miasma :-+=+--
--+=+------------------------+=+--

return {
    {
        'xero/miasma.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme('miasma')
        end,
    }
}

-- vim: ts=4 sts=4 sw=4 et
