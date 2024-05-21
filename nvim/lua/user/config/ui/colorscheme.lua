--+=+--------------------------------+=+--
--+=+-: User.Config.Ui.Colorscheme :-+=+--
--+=+--------------------------------+=+--

return {
    module = {
        --  See `/colorscheme` for available options
        colorscheme = [[kanagawa]],
        --  See `/colorscheme/[colorscheme].lua` for available options
        theme = [[wave]],
    },
    background = {
        transparent = false,
    },
    text_style = {
        comments = {
            override = false,
            bold = false,
            italic = true,
        },
        functions = {
            override = false,
            bold = false,
            italic = false,
        },
        keywords = {
            override = false,
            bold = false,
            italic = true,
        },
        statements = {
            override = false,
            bold = true,
            italic = false,
        },
        types = {
            override = false,
            bold = false,
            italic = false,
        },
    },
}

--  vim: ts=4 sts=4 sw=4 et
