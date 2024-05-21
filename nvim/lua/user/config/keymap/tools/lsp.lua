--+=+----------------------------------+=+--
--+=+-: User.Config.Keymap.Tools.Lsp :-+=+--
--+=+----------------------------------+=+--

return {
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
}
