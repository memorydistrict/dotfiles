--+=+---------------------+=+--
--+=+-: Plugin.Reactive :-+=+--
--+=+---------------------+=+--

return {
    {
        'rasulomaroff/reactive.nvim',
        config = function()
            require('reactive').setup({
                builtin = {
                    cursorline = true,
                    cursor = true,
                    modemsg = true,
                }
            })
        end,
    }
}

--  vim: ts=4 sts=4 sw=4 et
