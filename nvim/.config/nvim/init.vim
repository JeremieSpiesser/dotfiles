call plug#begin('~/.local/share/nvim/plugged')


" Tools
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-fugitive'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf' 
"Plug 'soramugi/auto-ctags.vim'

Plug 'christoomey/vim-tmux-navigator'
Plug 'vimwiki/vimwiki'
Plug 'djoshea/vim-autoread'
Plug 'junegunn/goyo.vim'

" Style/theming
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'

"Plug 'ThePrimeagen/vim-be-good'



Plug 'neoclide/coc.nvim', {'branch':'release'}

call plug#end()


" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


colorscheme nord
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

let mapleader = ","
set rnu

"Vim wiki
set nocompatible
filetype plugin on
syntax on
let g:vimwiki_list = [{'path': '~/Obsidian/LifeOS/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


" NerdTree
" autostart : doesn't work
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists(“s:std_in”) | NERDTree | endif


nnoremap <Leader>f :NERDTreeToggle<Enter>

nnoremap <silent> <Leader>v :NERDTreeFind<CR>


" Mouse support
"
set ttyfast
set mouse=a
set ai
set hidden
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
"nnoremap <C-h> :tabprevious<CR>
"nnoremap <C-l> :tabnext<CR>
"
nnoremap <Leader>b :ls<CR>:b<Space>

"Control P remaps
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlPBuffer'


" FZF BINDS
"
nnoremap <C-b> :Buffers<Enter>
nnoremap <C-p> :Files <Enter>
nnoremap <C-g> :Ag<Cr>

" Auto Ctags
"
"let g:auto_ctags = 1
"let g:auto_ctags_set_tags_option = 0


" DWM TMUX


let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
"nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" relative mode
"noremap & 1
"noremap 1 &
"noremap é 2
"noremap 2 é
"noremap " 3
"noremap 3 "
"noremap ' 4
"noremap 4 '
"noremap ( 5
"noremap 5 (
"noremap - 6
"noremap 6 -
"noremap è 7
"noremap 7 è
"noremap _ 8
"noremap 8 _
"noremap ç 9
"noremap 9 ç
"noremap à 0
"noremap 0 à
