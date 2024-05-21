--+=+-----------------------------+=+--
--+=+-: User.Config.Keymap.View :-+=+--
--+=+-----------------------------+=+--

return {
    center_buffer = [[%]],
    --  `user.macro.command.FlipWindows`
    flip_windows = [[<Leader>fw]],
    navigate_windows = {
        up = [[<C-k>]],
        down = [[<C-j>]],
        left = [[<C-h>]],
        right = [[<C-l>]],
    },
    resize_split_windows = {
        maximize_current = [[<Leader>m]],
        even_size = [[<Leader>=]],
    },
    folds = {
        open_all = [[zR]],
        close_all = [[zM]],
    },
    show = {
        diagnostics = [[<Leader>vd]],
        spell_checking = [[<Leader>vs]],
    },
    wrap_text = [[<Leader>vw]],
    switch_to_last_buffer = [[<Leader>']],
    symbols_outline = {
        open = [[<Leader>so]],
        close = [[*UNKNOWN*]], --  Create map
    },
    move_cursor_to = {
        page = {
            up = [[<C-u>]],
            down = [[<C-d>]],
        },
        blankline = {
            prev = [[{]],
            next = [[}]],
        },
        block = {
            prev = [[n]],
            next = [[N]],
        },
        line = {
            first = [[gg]],
            last = [[G]],
        },
        term = {
            prev = [[<C-i>]],
            next = [[<C-o>]],
        },
        char = {
            first = { [[H]], [[<Home>]] },
            last = { [[L]], [[<End>]] },  --  Not mapped
        },
    },
}

-- vim: ts=4 sts=4 sw=4 et
