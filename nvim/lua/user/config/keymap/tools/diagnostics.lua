--+=+------------------------------------------+=+--
--+=+-: User.Config.Keymap.Tools.Diagnostics :-+=+--
--+=+------------------------------------------+=+--

return {
    ui = {
        open = [[<Leader>d]],
    },
    goto = {
        all = {
            prev = [[[d]],
            next = [[]d]],
        },
        error = {
            prev = [[[e]],
            next = [[]e]],
        },
        warning = {
            prev = [[[w]],
            next = [[]w]],
        },
    },
    quickfix = {
        ui = {
            open = [[<Leader>co]],
            close = [[<Leader>cc]],
        },
        add_all = [[<Leader>ld]],
        goto = {
            prev = [[<Leader>cp]],
            next = [[<Leader>cn]],
        },
    },
}
