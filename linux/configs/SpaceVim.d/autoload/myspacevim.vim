function! myspacevim#before() abort
  let g:tmux_navigator_disable_when_zoomed = 1
endfunction 

function! myspacevim#after() abort
  nnoremap <silent> <M-Left>  :TmuxNavigateLeft<CR>
  nnoremap <silent> <M-Down>  :TmuxNavigateDown<CR>
  nnoremap <silent> <M-Up>    :TmuxNavigateUp<CR>
  nnoremap <silent> <M-Right> :TmuxNavigateRight<CR>
endfunction 
