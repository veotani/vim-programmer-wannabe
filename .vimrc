" Install vim-plug to use plugins
call plug#begin('~/.vim/plugged')
	" NERDTree is used to navigate in project
	" Comes with fancy plugins
	Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'

	" Autocompletion and refactor with jedi
	Plug 'davidhalter/jedi-vim'

	" ALE is used in refactoring too
	Plug 'dense-analysis/ale'
call plug#end()

" I love linters
" I would even say it's not enough linters T_T
let g:ale_linters = {
      \   'python': ['flake8', 'pylint', 'pycodestyle', 'pydocstyle', 'mypy', 'bandit', 'pyls'],
      \}

" I'm still not sure if it works, but I'm not satisfied with my autoimports
" yet.
let g:ale_completion_autoimport = 1

" How to fix code with :ALEFix
let g:ale_fixers = [
  \   'autoimport',
  \   'remove_trailing_lines',
  \   'isort',
  \   'ale#fixers#generic_python#BreakUpLongLines',
  \   'yapf',
  \]
