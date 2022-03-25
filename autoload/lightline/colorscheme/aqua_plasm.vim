" =============================================================================
" Filename: autoload/lightline/colorscheme/PaperColor_plasm.vim
" Author: TKNGUE , plasmik
" License: MIT License
" Last Change: 2022/03/28
" =============================================================================

let s:red = "#df0000"
let s:green = "#008700"
let s:blue = "#4271ae"
let s:pink = "#d7005f"
let s:olive = "#718c00"
let s:navy = "#005f87"
let s:orange = "#d75f00"
let s:purple = "#8959a8"
let s:aqua = "#3e999f"
let s:asphalt = "#4d4d4c"
let s:white = "#f5f5f5"
let s:offwhite = "#efefef"

" Basics:
let s:foreground = s:asphalt
let s:background = s:offwhite
let s:status = s:aqua
let s:error = "#ffafdf"

" Tabline:
let s:tabline_bg = s:navy
let s:tabline_active_fg = s:asphalt
let s:tabline_active_bg = s:offwhite
let s:tabline_inactive_fg = s:background
let s:tabline_inactive_bg = s:aqua

" Statusline:
let s:statusline_active_fg = s:offwhite
let s:statusline_active_bg = s:navy
let s:statusline_inactive_fg = s:foreground
" let s:statusline_inactive_bg = "#dadada"

let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {}}
let s:p.normal.left = [[ s:foreground, s:background ], [ s:statusline_active_fg, s:status ], [ s:statusline_active_fg, s:statusline_active_bg ]]
let s:p.normal.right = [[ s:foreground, s:background ], [ s:statusline_active_fg, s:status ], [ s:statusline_active_fg, s:statusline_active_bg ]]
let s:p.normal.middle = [[ s:statusline_active_fg, s:statusline_active_bg ]]
let s:p.inactive.right = [[ s:offwhite, s:aqua ], [ s:offwhite, s:navy ]]
let s:p.inactive.left = [[ s:offwhite, s:aqua ], [ s:foreground, s:background ]]
let s:p.inactive.middle = [[ s:foreground, s:navy ], ]
let s:p.insert.left = [[ s:blue, s:background ], [ s:statusline_active_fg, s:status ], [ s:statusline_active_fg, s:statusline_active_bg ]]
let s:p.replace.left = [[ s:background, s:pink ], [ s:statusline_active_fg, s:status ], [ s:statusline_active_fg, s:statusline_active_bg ]]
let s:p.visual.left = [[ s:background, s:orange ], [ s:statusline_active_fg, s:status ], [ s:statusline_active_fg, s:statusline_active_bg ]]
let s:p.tabline.left = [[ s:tabline_inactive_fg, s:tabline_inactive_bg ]]
let s:p.tabline.tabsel = [[ s:tabline_active_fg, s:tabline_active_bg ]]
let s:p.tabline.middle = [[ s:tabline_bg, s:tabline_bg ]]
" let s:p.tabline.right = copy(s:p.normal.right)
let s:p.tabline.right = [[ s:foreground, s:background ], [ s:statusline_active_fg, s:status ], [ s:statusline_active_fg, s:statusline_active_bg ]]
let s:p.normal.error = [[ s:background, s:error ]]
let s:p.normal.warning = [[ s:background, s:olive ]]

" echo s:p
let g:lightline#colorscheme#aqua_plasm#palette = lightline#colorscheme#fill(s:p)

