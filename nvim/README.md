# memory-district.nvim

## Keymaps

### Leader
,---------------,---------------------------,---------------------------,
| Keymap        | Description               | Dependencies              |
:---------------:---------------------------:---------------------------:
| <Leader>fw    | Flip windows              |                           |
| <Leader>no    | Deactivate highlight      |                           |
| <Leader>S     | Open Spectre UI           | nvim-pack/nvim-spectre    |
| <Leader>sw    | Global find and replace   | nvim-pack/nvim-spectre    |
'---------------'---------------------------'---------------------------'




#### LSP
```
,-----------,---------------,---------------------------------------------------,
| Mode      | Keymap        | Description                                       |
:-----------:---------------:---------------------------------------------------:
| Normal    | <Leader>rn    | Rename                                            |
| Normal    | <Leader>ca    | Code action                                       |
| Normal    | gd            | Goto definition                                   |
| Normal    | gr            | Goto references                                   |
| Normal    | gi            | Goto implementation                               |
| Normal    | <Leader>bs    | Buffer symbols                                    |
| Normal    | <Leader>ps    | Project symbols                                   |
| Normal    | K             | Hover documentation                               |
| Normal    | <Leader>k     | Signature documentation                           |
| Normal    | <C-k>         | Signature documentation                           |
| Normal    | gD            | Goto declaration                                  |
| Normal    | td            | Type definition                                   |
| Normal    | <Leader>f     | Format                                            |
'-----------'---------------'---------------------------------------------------'
```

### Diagnostics

#### Navigation
```
,-----------,---------------,---------------------------------------------------,
| Mode      | Keymap        | Description                                       |
:-----------:---------------:---------------------------------------------------:
| Normal    | [d            | Goto previous diagnostic of any severity          |
| Normal    | ]d            | Goto next diagnostic of any severity              |
| Normal    | [e            | Goto previous ERROR diagnostic                    |
| Normal    | ]e            | Goto next ERROR diagnostic                        |
| Normal    | [w            | Goto previous WARNING diagnostic                  |
| Normal    | ]w            | Goto next WARNING diagnostic                      |
| Normal    | <Leader>d     | Open diagnostic                                   |
'-----------'---------------'---------------------------------------------------'
```

#### Quickfix
```
,-----------,---------------,---------------------------------------------------,
| Mode      | Keymap        | Description                                       |
:-----------:---------------:---------------------------------------------------:
| Normal    | <Leader>co    | Open the Quickfix list                            |
| Normal    | <Leader>ld    | Place all diagnostics into Quickfix list          |
| Normal    | <Leader>cp    | Goto previous Quickfix list item                  |
| Normal    | <Leader>cn    | Goto next Quickfix list item                      |
| Normal    | <Leader>cc    | Clear the Quickfix list                           |
'-----------'---------------'---------------------------------------------------'
```

### Navigation

#### Buffer
```
,-----------,---------------,---------------------------------------------------,
| Mode      | Keymap        | Description                                       |
:-----------:---------------:---------------------------------------------------:
| Normal    | <Leader>'     | Swap between last two buffers                     |
| Normal    | <Leader>w     | Write file                                        |
| Normal    | <Leader>q     | Quit buffer                                       |
| Normal    | <Leader>z     | Write file and quit buffer                        |
'-----------'---------------'---------------------------------------------------'
```

#### Clipboard
```
,-----------,---------------,---------------------------------------------------,
| Mode      | Keymap        | Description                                       |
:-----------:---------------:---------------------------------------------------:
| Normal    | U             | Redo                                              |
| Visual    | <A-j>         | Paste without losing register content             |
| Visual    | <A-k>         | Page down                                         |
| Visual+   | <Leader>p     | Goto previous blankline                           |
| Visual+   | <<            | Goto next blankline                               |
| Visual+   | >>            | Goto end of previous block                        |
'-----------'---------------'---------------------------------------------------'
```

#### Cursor
```
,-----------,---------------,---------------------------------------------------,
| Mode      | Keymap        | Description                                       |
:-----------:---------------:---------------------------------------------------:
| Normal    | %             | Center buffer to cursor                           |
| Normal    | <C-u>         | Page up                                           |
| Normal    | <C-d>         | Page down                                         |
| Normal    | {             | Goto previous blankline                           |
| Normal    | }             | Goto next blankline                               |
| Normal    | n             | Goto end of previous block                        |
| Normal    | N             | Goto end of next block                            |
| Normal    | gg            | Goto first line in buffer                         |
| Normal    | G             | Goto last line in buffer                          |
| Normal    | <C-i>         | Goto previous term under cursor                   |
| Normal    | <C-o>         | Goto next term under cursor                       |
| Normal    | H             | Goto first character in the line                  |
| Normal    | <Home>        | Goto first character in the line                  |
| Insert    | <Home>        | Goto first character in the line                  |
| Normal    | gx            | Open link under the cursor                        |
'-----------'---------------'---------------------------------------------------'
```

#### Find/replace
```
,-----------,---------------,---------------------------------------------------,
| Mode      | Keymap        | Description                                       |
:-----------:---------------:---------------------------------------------------:
| Normal    | S             | Quick find/replace term under cursor              |
| Normal    | <Leader>S     | Global find/replace                               |
| Normal    | <Leader>sw    | Global find/replace term under cursor             |
'-----------'---------------'---------------------------------------------------'
```

#### Highlighting
```
,-----------,---------------,---------------------------------------------------,
| Mode      | Keymap        | Description                                       |
:-----------:---------------:---------------------------------------------------:
| Normal    | #             | Highlight all, goto previous term under cursor    |
| Normal    | *             | Highlight all, goto next term under cursor        |
| Normal    | <Leader>no    | Deactivate highlighting                           |
'-----------'---------------'---------------------------------------------------'
```

#### Modes
```
,-----------,---------------,---------------------------------------------------,
| Mode      | Keymap        | Description                                       |
:-----------:---------------:---------------------------------------------------:
| Insert    | jj            | Enter NORMAL mode                                 |
| Terminal  | jj            | Enter NORMAL mode                                 |
| Terminal  | <Esc>         | Enter NORMAL mode                                 |
'-----------'---------------'---------------------------------------------------'
```

#### Window
```
,-----------,---------------,---------------------------------------------------,
| Mode      | Keymap        | Description                                       |
:-----------:---------------:---------------------------------------------------:
| Normal    | <C-k>         | Goto upper window                                 |
| Terminal  | <C-k>         | Goto upper window                                 |
| Normal    | <C-j>         | Goto lower window                                 |
| Terminal  | <C-j>         | Goto lower window                                 |
| Normal    | <C-h>         | Goto left window                                  |
| Terminal  | <C-h>         | Goto left window                                  |
| Normal    | <C-l>         | Goto right window                                 |
| Terminal  | <C-l>         | Goto right window                                 |
| Normal    | <Leader>m     | Toggle Maximizer                                  |
| Normal    | <Leader>=     | Resize split windows to be equal size             |
| Normal    | <Leader>fw    | Flip windows                                      |
'-----------'---------------'---------------------------------------------------'
```

### Plugins

#### Git
```
,-----------,---------------,---------------------------------------------------,
| Mode      | Keymap        | Description                                       |
:-----------:---------------:---------------------------------------------------:
| Normal    | <Leader>gb    | Activate Git blame annotations                    |
| Normal    | <Leader>gf    | Search Git files                                  |
'-----------'---------------'---------------------------------------------------'
```

#### Harpoon
```
,-----------,---------------,---------------------------------------------------,
| Mode      | Keymap        | Description                                       |
:-----------:---------------:---------------------------------------------------:
| Normal    | <Leader>ho    | Open Harpoon                                      |
| Normal    | <Leader>ha    | Add current file                                  |
| Normal    | <Leader>hr    | Remove current file                               |
| Normal    | <Leader>hc    | Clear files                                       |
| Normal    | <Leader>1     | Jump to file [1]                                  |
| Normal    | <Leader>2     | Jump to file [2]                                  |
| Normal    | <Leader>3     | Jump to file [3]                                  |
| Normal    | <Leader>4     | Jump to file [4]                                  |
| Normal    | <Leader>5     | Jump to file [5]                                  |
'-----------'---------------'---------------------------------------------------'
```

#### Oil
```
,-----------,---------------,---------------------------------------------------,
| Mode      | Keymap        | Description                                       |
:-----------:---------------:---------------------------------------------------:
| Normal    | <Leader>e     | Open Oil                                          |
'-----------'---------------'---------------------------------------------------'
```

#### Outline
```
,-----------,---------------,---------------------------------------------------,
| Mode      | Keymap        | Description                                       |
:-----------:---------------:---------------------------------------------------:
| Normal    |               |                                                   |
| Normal    |               |                                                   |
| Normal    |               |                                                   |
| Normal    |               |                                                   |
| Normal    |               |                                                   |
| Normal    |               |                                                   |
| Normal    |               |                                                   |
| Normal    |               |                                                   |
| Normal    |               |                                                   |
| Normal    |               |                                                   |
| Normal    |               |                                                   |
| Normal    |               |                                                   |
| Normal    |               |                                                   |
| Normal    |               |                                                   |
'-----------'---------------'---------------------------------------------------'
```

#### Telescope
```
,-----------,---------------,---------------------------------------------------,
| Mode      | Keymap        | Description                                       |
:-----------:---------------:---------------------------------------------------:
| Normal    | <Leader>?     | Search recently opened files                      |
| Normal    | <Leader>sb    | Search open buffers                               |
| Normal    | <Leader>sf    | Search files                                      |
| Normal    | <Leader>sh    | Search help                                       |
| Normal    | <Leader>sg    | Search by grep                                    |
| Normal    | <Leader>sc    | Search commands                                   |
| Normal    | <Leader>/     | Fuzzily search in current buffer                  |
| Normal    | <Leader>ss    | Search spelling suggestions                       |
'-----------'---------------'---------------------------------------------------'
```

#### UFO
```
,-----------,---------------,---------------------------------------------------,
| Mode      | Keymap        | Description                                       |
:-----------:---------------:---------------------------------------------------:
| Normal    | zR            | Open all folds                                    |
| Normal    | zM            | Close all folds                                   |
'-----------'---------------'---------------------------------------------------'
```

