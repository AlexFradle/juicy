let s:green   = ['#00ff00', 46]
let s:darkgreen = ["#005f00", 22]
let s:yellow = ["#ffff00", 226]
let s:darkyellow = ["#5f5f00", 58]
let s:blue = ["#5fffd7", 86]
let s:black = ["#000000", 0]
let s:magenta = ["#ff5fff", 207]
let s:darkmagenta = ["#5f005f", 53]
let s:cyan = ["#00ffff", 51]
let s:darkcyan = ["#005f5f", 23]
let s:red = ["#ff0000", 9]
let s:darkred = ["#5f0000", 52]
let s:pink = ["#ff5faf", 205]
let s:grey = ["#121212", 233]

let s:white   = ['#ffffff', 251]
let s:grey247 = ["#9e9e9e", 247]
let s:grey236 = ['#303030', 236]
let s:grey234 = ['#1c1c1c', 234]

let g:juicy#insert_main = s:green
let g:juicy#insert_sec = s:darkgreen

let g:juicy#normal_main = s:cyan
let g:juicy#normal_sec = s:darkcyan

let g:juicy#visual_main = s:magenta
let g:juicy#visual_sec = s:darkmagenta

let g:juicy#replace_main = s:yellow
let g:juicy#replace_sec = s:darkyellow

let g:juicy#command_main = s:red
let g:juicy#command_sec = s:darkred

let s:normal1   = [s:black[0], g:juicy#normal_main[0],    s:black[1], g:juicy#normal_main[1]]
let s:normal2   = [s:white[0],   g:juicy#normal_sec[0], s:white[1],   g:juicy#normal_sec[1]]
let s:normal3   = [s:white[0],   g:juicy#normal_sec[0], s:white[1],   g:juicy#normal_sec[1]]

let s:insert1   = [s:black[0], g:juicy#insert_main[0],   s:black[1], g:juicy#insert_main[1]]
let s:insert2   = [s:white[0],   g:juicy#insert_sec[0], s:white[1],   g:juicy#insert_sec[1]]
let s:insert3   = [s:white[0],   g:juicy#insert_sec[0], s:white[1],   g:juicy#insert_sec[1]]

let s:replace1  = [s:black[0], g:juicy#replace_main[0], s:black[1], g:juicy#replace_main[1]]
let s:replace2  = [s:white[0],   g:juicy#replace_sec[0], s:white[1],   g:juicy#replace_sec[1]]
let s:replace3  = [s:white[0],   g:juicy#replace_sec[0], s:white[1],   g:juicy#replace_sec[1]]

let s:visual1   = [s:black[0], g:juicy#visual_main[0],  s:black[1], g:juicy#visual_main[1]]
let s:visual2   = [s:white[0],   g:juicy#visual_sec[0], s:white[1],   g:juicy#visual_sec[1]]
let s:visual3   = [s:white[0],   g:juicy#visual_sec[0], s:white[1],   g:juicy#visual_sec[1]]

let s:command1   = [s:black[0], g:juicy#command_main[0],  s:black[1], g:juicy#command_main[1]]
let s:command2   = [s:white[0],   g:juicy#command_sec[0], s:white[1],   g:juicy#command_sec[1]]
let s:command3   = [s:white[0],   g:juicy#command_sec[0], s:white[1],   g:juicy#command_sec[1]]

let s:inactive1 = [s:black[0], s:grey247[0], s:grey247[1], s:grey236[1]]
let s:inactive2 = [s:grey247[0], s:grey[0], s:grey247[1], s:grey236[1]]
let s:inactive3 = [s:grey247[0], s:grey[0], s:grey247[1], s:grey236[1]]

let s:warning_normal  = [s:white[0],   g:juicy#normal_sec[0], s:white[1],   g:juicy#normal_sec[1]]
let s:warning_insert  = [s:white[0],   g:juicy#insert_sec[0], s:white[1],   g:juicy#insert_sec[1]]
let s:warning_replace  = [s:white[0],   g:juicy#replace_sec[0], s:white[1],   g:juicy#replace_sec[1]]
let s:warning_visual  = [s:white[0],   g:juicy#visual_sec[0], s:white[1],   g:juicy#visual_sec[1]]
let s:warning_command  = [s:white[0],   g:juicy#command_sec[0], s:white[1],   g:juicy#command_sec[1]]
let s:warning_inactive  = [s:white[0],   s:grey[0], s:white[1],   s:grey[1]]

let s:error     = [s:blue[0],    s:black[0], s:blue[1],    s:grey236[1]]

if exists('g:airline_theme')
    let g:airline#themes#juicy#palette                          = {}
    let g:airline#themes#juicy#palette                          = {}
    let g:airline#themes#juicy#palette.normal                   = airline#themes#generate_color_map(s:normal1, s:normal2, s:normal3)
    let g:airline#themes#juicy#palette.normal.airline_warning   = s:warning_normal
    let g:airline#themes#juicy#palette.normal.airline_error     = s:error
    let g:airline#themes#juicy#palette.insert                   = airline#themes#generate_color_map(s:insert1, s:insert2, s:insert3)
    let g:airline#themes#juicy#palette.insert.airline_warning   = s:warning_insert
    let g:airline#themes#juicy#palette.insert.airline_error     = s:error
    let g:airline#themes#juicy#palette.replace                  = airline#themes#generate_color_map(s:replace1, s:replace2, s:replace3)
    let g:airline#themes#juicy#palette.replace.airline_warning  = s:warning_replace
    let g:airline#themes#juicy#palette.replace.airline_error    = s:error
    let g:airline#themes#juicy#palette.visual                   = airline#themes#generate_color_map(s:visual1, s:visual2, s:visual3)
    let g:airline#themes#juicy#palette.visual.airline_warning   = s:warning_visual
    let g:airline#themes#juicy#palette.visual.airline_error     = s:error
    let g:airline#themes#juicy#palette.commandline                   = airline#themes#generate_color_map(s:command1, s:command2, s:command3)
    let g:airline#themes#juicy#palette.commandline.airline_warning   = s:warning_command
    let g:airline#themes#juicy#palette.commandline.airline_error     = s:error
    let g:airline#themes#juicy#palette.inactive                 = airline#themes#generate_color_map(s:inactive1, s:inactive2, s:inactive3)
    let g:airline#themes#juicy#palette.inactive.airline_warning = s:warning_inactive
    let g:airline#themes#juicy#palette.inactive.airline_error   = s:error
endif
