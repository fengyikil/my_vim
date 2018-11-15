"解决ALT无法map的问题
for i in range(97,122)
	  let c = nr2char(i)
	    exec "map \e".c." <M-".c.">"
	      exec "map! \e".c." <M-".c.">"
endfor
"常规配置
set nu
set mouse=a
set hlsearch 



"插件管理
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
" nerdtree
Plug 'https://github.com/scrooloose/nerdtree.git'
" leadf
Plug 'https://github.com/Yggdroot/LeaderF.git'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
call plug#end()


"插件配置
"nerdtree
map <f2> :NERDTreeToggle<cr>

"leadf
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
noremap <c-n> :LeaderfMru<cr>
noremap <m-p> :LeaderfFunction!<cr>
noremap <m-n> :LeaderfBuffer<cr>
noremap <m-m> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}


