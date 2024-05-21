--+=+-----------------------------------------+=+--
--+=+-: User.Macro.Command.View.FlipWindows :-+=+--
--+=+-----------------------------------------+=+--

--  FIX:    Window count does NOT ignore both `neo-tree` and `Outline`

local nnoremap = require('user.util.keymap').nnoremap
local keymap = require('user.config.keymap.view').flip_windows
local cmd = 'FlipWindows'

nnoremap(
    keymap,
    '<cmd>'.. cmd .. '<CR>'
)

vim.api.nvim_create_user_command(
    cmd,
    function()
        local ignored_filetypes = {
            'fidget',
            'neo-tree',
            'notify',
            'Outline',
            'qf',
            'toggleterm',
        }
        local window_numbers = vim.api.nvim_tabpage_list_wins(0)
        local windows_to_flip = {}

        for _, window_number in ipairs(window_numbers) do
            local buffer_number = vim.api.nvim_win_get_buf(window_number)
            local filetype = vim.bo[buffer_number].filetype

            if not vim.tbl_contains(ignored_filetypes, filetype) then
                table.insert(
                    windows_to_flip,
                    { window_number = window_number, buffer_number = buffer_number }
                )
            end
        end

        local num_eligible_windows = vim.tbl_count(windows_to_flip)

        if num_eligible_windows == 0 then
            return
        elseif num_eligible_windows == 1 then
            vim.api.nvim_err_writeln("Can't flip without a second window")
            return
        elseif num_eligible_windows == 2 then
            local firstWindow = windows_to_flip[1]
            local secondWindow = windows_to_flip[2]

            vim.api.nvim_win_set_buf(
                firstWindow.window_number,
                secondWindow.buffer_number
            )
            vim.api.nvim_win_set_buf(
                secondWindow.window_number,
                firstWindow.buffer_number
            )
        else
            vim.api.nvim_err_writeln(
                "You can only flip between 2 open windows. Found " ..
                num_eligible_windows
            )
        end
    end,
    {}
)

-- vim: ts=4 sts=4 sw=4 et
