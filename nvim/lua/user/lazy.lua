--+=+---------------+=+--
--+=+-: User.Lazy :-+=+--
--+=+---------------+=+--

--  Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'

    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        lazyrepo,
        '--branch=stable',
        lazypath
    })
end

vim.opt.rtp:prepend(lazypath)

--  Set up Lazy plugins
local lazy = require('lazy')

lazy.setup(
    {
        { import = 'plugin.user' },
        { import = 'plugin' },
    },
    {
        change_detection = {
            enabled = true,
            notify = false,
        },
    }
)

--  vim: ts=4 sts=4 sw=4 et
