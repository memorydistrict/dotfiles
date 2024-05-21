--+=+---------------------------------------------+=+--
--+=+-: User.Config.Keymap.Tools.Autocompletion :-+=+--
--+=+---------------------------------------------+=+--

return {
    ui = {
        open = [[<C-Space>]],
        close = [[<C-c>]],
    },
    navigation = {
        suggestion = {
            prev = { [[<C-k>]], [[<S-Tab>]], },
            next = { [[<C-j>]], [[<Tab>]], },
            confirm = [[<CR>]],
        },
        preview = {
            scroll = {
                up = [[C-u]],
                down = [[C-d]],
            },
        },
    },
}
