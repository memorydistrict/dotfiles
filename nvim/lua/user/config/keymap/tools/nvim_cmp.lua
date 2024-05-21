--+=+--------------------------------------+=+--
--+=+-: User.Config.Keymap.Tools.NvimCmp :-+=+--
--+=+--------------------------------------+=+--

return {
    ui = {
        open = [[<C-Space>]],
        close = [[<C-c>]],
        scroll = {
            up = [[<C-u>]],
            down = [[<C-d>]],
        },
    },
    suggestion = {
        prev = { [[<C-k>]], [[<S-Tab>]], },
        next = { [[<C-j>]], [[<Tab>]], },
        confirm = [[<CR>]],
    },
}

--  vim: ts=4 sts=4 sw=4 et
