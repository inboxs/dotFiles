"---------------------------------------------------------------------
" 格式化Json文件
"---------------------------------------------------------------------
nmap fj :execute '%!python -m json.tool'<cr>

"---------------------------------------------------------------------
" 保存退出文件
"---------------------------------------------------------------------

"nmap ZZ :wq<cr>

"---------------------------------------------------------------------
" 快捷键映射转换md到pdf
"---------------------------------------------------------------------
nmap <F12> :execute '%!pandoc -f markdown --pdf-engine=xelatex --template=/home/aumujun/Doc/template.tex -o convert.pdf'<cr>

 
"---------------------------------------------------------------------
" 快捷键映射快速运行
"---------------------------------------------------------------------

" nmap <F4> :QuickRunExecute<cr>
nmap <F4> :SCCompileRun<cr>

"---------------------------------------------------------------------
" 快捷键映射SingleCompile
"---------------------------------------------------------------------

nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>

"---------------------------------------------------------------------
" 防止剪贴板被劫持
"---------------------------------------------------------------------
inoremap <C-r>+ <C-g>u<C-\><C-o>"+gP


"---------------------------------------------------------------------
" 快捷键格式化python代码
"---------------------------------------------------------------------
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf --style google<CR> " 格式化python代码

autocmd FileType python nnoremap <LocalLeader>i :!isort %<CR><CR> " import 整理


"---------------------------------------------------------------------
" 快捷键预览markdown
"---------------------------------------------------------------------
nmap <silent> <F8> <Plug>MarkdownPreview        " 普通模式
imap <silent> <F8> <Plug>MarkdownPreview        " 插入模式
nmap <silent> <F9> <Plug>StopMarkdownPreview    " 普通模式
imap <silent> <F9> <Plug>StopMarkdownPreview    " 插入模式


"---------------------------------------------------------------------
" 快捷键打开tagbar
"---------------------------------------------------------------------
nmap <F8> :TagbarToggle<CR>
nmap <F7> :Vista!!<CR>

"---------------------------------------------------------------------
" 快捷键打开Defx
"---------------------------------------------------------------------
nnoremap <F3> :Defx -resume -toggle -buffer-name=tab`tabpagenr()`<cr>

"---------------------------------------------------------------------
" 快捷键打开NerdTree
"---------------------------------------------------------------------
map <F2> :NERDTreeToggle<CR>

"---------------------------------------------------------------------
" 使用[e, ]e快速移动行到上下
"---------------------------------------------------------------------
nnoremap [e :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e :<c-u>execute 'move +'. v:count1<cr>

"---------------------------------------------------------------------
" 快速添加空行
"---------------------------------------------------------------------
nnoremap [<space> :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

"---------------------------------------------------------------------
" 选择窗口
"---------------------------------------------------------------------
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

"---------------------------------------------------------------------
" 修改窗口大小
"---------------------------------------------------------------------
nmap <C-w>[ :vertical resize -3<CR>
nmap <C-w>] :vertical resize +3<CR>


