--+=+-----------------------------+=+--
--+=+-: User.Macro.Command.Init :-+=+--
--+=+-----------------------------+=+--

local path = 'user.macro.command.'

--  Initialize all listed commands

require(path .. 'edit.CopyFilePathToClipboard')

require(path .. 'view.FlipWindows')
require(path .. 'view.ToggleDiagnostics')
--  require(path .. 'view.ToggleSpellCheck')
--  require(path .. 'view.ToggleTextWrap')

require(path .. 'ToggleESLint')

-- vim: ts=4 sts=4 sw=4 et
