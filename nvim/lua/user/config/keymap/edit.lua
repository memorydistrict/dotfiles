--+=+-----------------------------+=+--
--+=+-: User.Config.Keymap.Edit :-+=+--
--+=+-----------------------------+=+--

--  TODO:   - Map commented functions

return {
    -- undo = [[*UNKNOWN*]],
    redo = [[U]],
    copy = {
        file_path = [[<C-V>]],
    },
    find_and_replace = {
        highlight = {
            and_goto = {
                prev = [[#]],
                next = [[*]],
            },
            deactivate = [[<Leader>no]],
        },
        open_spectre_ui = [[<Leader>S]],
        quick_find_and_replace = [[S]],
        global_find_and_replace = [[<Leader>sw]],
    },
}

-- vim: ts=4 sts=4 sw=4 et
