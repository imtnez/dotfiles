function! myspacevim#before() abort
   let g:tmux_navigator_disable_when_zoomed = 1
endfunction 

function! myspacevim#after() abort
   set expandtab
   set tabstop=3
   set shiftwidth=3
   set notagrelative
   set tags+=./.tags/tags;/.tags/tags
   call cscope_maps#LoadCscope()

   nnoremap <silent> <M-Left>  :TmuxNavigateLeft<CR>
   nnoremap <silent> <M-Down>  :TmuxNavigateDown<CR>
   nnoremap <silent> <M-Up>    :TmuxNavigateUp<CR>
   nnoremap <silent> <M-Right> :TmuxNavigateRight<CR>
endfunction 

