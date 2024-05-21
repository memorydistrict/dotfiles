--+=+-----------------------------+=+--
--+=+-: Plugin.User.Colorscheme :-+=+--
--+=+-----------------------------+=+--

--  Colorscheme is applied via the `user.config.ui.colorscheme` value

local uc = {
    ui = {
        colorscheme = require('user.config.ui.colorscheme'),
    },
}

return { require('colorscheme.' .. uc.ui.colorscheme.module.colorscheme) }

--  vim: ts=4 sts=4 sw=4 et
