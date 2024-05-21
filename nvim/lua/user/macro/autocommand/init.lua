--+=+---------------------------------+=+--
--+=+-: User.Macro.Autocommand.Init :-+=+--
--+=+---------------------------------+=+--

local path = 'user.macro.autocommand.'

--  Initialize all listed autocommands

require(path .. 'ViewText')
require(path .. 'ExpandVimEnter')
require(path .. 'ExpandWinClosed')
require(path .. 'HighlightYanked')
require(path .. 'ResizeWindows')
require(path .. 'VerticalHelpWindow')

-- vim: ts=4 sts=4 sw=4 et
