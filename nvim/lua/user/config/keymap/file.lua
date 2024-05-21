--+=+-----------------------------+=+--
--+=+-: User.Config.Keymap.File :-+=+--
--+=+-----------------------------+=+--

return {
    open = {
        file = [[<Leader>sf]],
        recent = [[<Leader>?]],
        buffer = [[<Leader>sb]],
    },
    write = [[<Leader>w]],
    quit_buffer = {
        standard = [[<Leader>q]],
        write = [[<Leader>z]],
        force = [[<Leader>qf]],
    },
}

-- vim: ts=4 sts=4 sw=4 et
