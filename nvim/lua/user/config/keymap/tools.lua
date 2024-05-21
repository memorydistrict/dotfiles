--+=+------------------------------+=+--
--+=+-: User.Config.Keymap.Tools :-+=+--
--+=+------------------------------+=+--

return {
    autocompletion = {
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
    },
    diagnostics = {
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
    },
    git = {
        blame = [[<Leader>gb]],
        search = [[<Leader>gf]],
    },
    harpoon = {
        ui = {
            open = [[<Leader>ho]],
        },
        add_buffer = [[<Leader>ha]],
        remove_buffer = [[<Leader>hr]],
        clear_buffer_list = [[<Leader>hc]],
        goto = {
            [[<Leader>1]],
            [[<Leader>2]],
            [[<Leader>3]],
            [[<Leader>4]],
            [[<Leader>5]],
        },
    },
    lsp = {
        rename = [[<Leader>rn]],
        code_action = [[<Leader>cn]],
        goto = {
            declaration = [[gD]],
            definition = [[gd]],
            references = [[gr]],
            implementations = [[gi]],
        },
        documentation = {
            hover = [[K]],
            signature = { [[<Leader>k]], [[<C-k>]], },
        },
        symbols = {
            buffer = [[<Leader>bs]],
            project = [[<Leader>ps]],
        },
        type_definition = [[td]],
    },
    neotree = {
        focus = {
            filesystem = [[e]],
            buffers = [[b]],
            git_status = [[g]],
        },
        new_tab = [[t]],
    },
    oil = {
        open_ui = [[<Leader>e]],
    },
    telescope = {
        move_selection = {
            prev = [[<C-k>]],
            next = [[<C-j>]],
        },
        quickfix_list = {
            open_ui = [[<C-q>]],
            send_selected = [[<C-q>]],
        },
        delete_buffer = [[<C-x>]],
    },
}

-- vim: ts=4 sts=4 sw=4 et
