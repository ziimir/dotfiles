" ============================================================================
" File:        float_term.vim
" Description:
" Maintainer:  ziimir
" License:     This program is free software. It comes without any warranty,
"              to the extent permitted by applicable law. You can redistribute
"              it and/or modify it under the terms of the Do What The Fuck You
"              Want To Public License, Version 2, as published by Sam Hocevar.
"              See http://sam.zoy.org/wtfpl/COPYING for more details.
"
" ============================================================================

" copy it to ~/.local/share/nvim/plugged/nerdtree/nerdtree_plugin

call NERDTreeAddMenuItem({
    \ 'text': 'open the current node with (v)ifs',
    \ 'shortcut': 'v',
    \ 'callback': 'NERDTreeOpenInVifm'
    \ })

function! NERDTreeOpenInVifm()
    let l:node = g:NERDTreeDirNode.GetSelected()

    if empty(l:node)
        return
    endif

    execute 'FloatermNew vifm ' . shellescape(l:node.path.str()) . ' ~/Downloads'
endfunction
