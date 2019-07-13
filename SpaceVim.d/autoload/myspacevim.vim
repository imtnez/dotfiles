function! myspacevim#before() abort
   let g:tmux_navigator_disable_when_zoomed = 1

   let g:vimfiler_tree_leaf_icon = "|"
   let g:vimfiler_tree_opened_icon = "-"
   let g:vimfiler_tree_closed_icon = "+"
   let g:vimfiler_tree_indentation = 1
   let g:vimfiler_readonly_file_icon = "X"
   let g:vimfiler_marked_file_icon = "*"
   let g:vimfiler_file_icon = " "

   let g:spacevim_autocomplete_method = 'coc'
   let g:spacevim_custom_plugins = [
      \ ['junegunn/fzf.vim'],
      \ ]
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

