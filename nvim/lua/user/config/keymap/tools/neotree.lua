--+=+--------------------------------------+=+--
--+=+-: User.Config.Keymap.Tools.Neotree :-+=+--
--+=+--------------------------------------+=+--

return {
    new = {
        file = [[a]],
        directory = [[A]],
    },
    open = {
        buffer = {
            replace_last = [[<C-CR>]],
            new_tab = [[<CR>]],
            new_split = [[<S-CR>]],
        },
    },
    view = {
        refresh = [[<C-r>]],
        focus = {
            filesystem = [[e]],
            buffers = [[b]],
            git_status = [[g]],
        },
        set_root = {
            current_directory = [[.]],
            up = [[<S-.>]],
        },
        show = {
            hidden_files = [[H]],
        }
    },
}
