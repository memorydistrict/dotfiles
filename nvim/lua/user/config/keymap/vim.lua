--+=+----------------------------+=+--
--+=+-: User.Config.Keymap.Vim :-+=+--
--+=+----------------------------+=+--

return {
    leader = [[<Space>]],
    switch_mode = {
        insert_to_normal = [[jj]],
        terminal_to_normal = { [[<Esc>]], [[jj]], },
    },
}

-- vim: ts=4 sts=4 sw=4 et
