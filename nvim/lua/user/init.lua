--+=+---------------+=+--
--+=+-: User.Init :-+=+--
--+=+---------------+=+--

require('user.options')

local nnoremap = require('user.util.keymap').nnoremap
local vnoremap = require('user.util.keymap').vnoremap
local tnoremap = require('user.util.keymap').tnoremap

local uc = {
    vim = require('user.config.vim'),
    keymap = {
        vim = require('user.config.keymap.vim'),
    },
}

--  Avoid `<Leader>` interference
if (uc.keymap.vim.leader == [[<Space>]]) then
    vim.g.mapleader = ' '
    vim.g.maplocalleader = ' '

    nnoremap(
        [[<Space>]],
        [[<nop>]]
    )
    vnoremap(
        [[<Space>]],
        [[<nop>]]
    )
    tnoremap(
        [[<Space>]],
        [[<Space>]]
    )
else
    vim.g.mapleader = uc.keymap.vim.leader
    vim.g.maplocalleader = uc.keymap.vim.leader
end

--  Nerd font is installed and active in terminal
vim.g.have_nerd_font = true

if (uc.vim.motions.enforce) then
    nnoremap(
        [[<Up>]],
        [[<cmd>echo "Use k to move up"<CR>]]
    )
    nnoremap(
        [[<Down>]],
        [[<cmd>echo "Use j to move down"<CR>]]
    )
    nnoremap(
        [[<Left>]],
        [[<cmd>echo "Use h to move left"<CR>]]
    )
    nnoremap(
        [[<Right>]],
        [[<cmd>echo "Use l to move right"<CR>]]
    )
end

--  Apply modules
require('user.lazy')
require('user.macro.autocommand')
require('user.macro.command')

-- vim: ts=4 sts=4 sw=4 et
