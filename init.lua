local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'folke/tokyonight.nvim'
Plug 'nvim-treesitter/nvim-treesitter'

vim.call('plug#end')

vim.cmd[[colorscheme tokyonight]]

-- Configuración de colores
vim.o.termguicolors = true

-- Configuración de números de línea y regla
vim.o.number = true
vim.o.ruler = true

-- Activar resaltado de sintaxis y filetype, plugin e indent
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')

-- Configuración de pestañas y espacios
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Opciones de menú salvaje, ocultar y mensajes cortos
vim.o.wildmenu = true
vim.o.hidden = true
vim.o.shortmess = vim.o.shortmess .. 'S'

-- Ignorar archivos salvajes
vim.o.wildignore = '*.exe,*.dll,*.pdb'


-- Opciones de secuencia de terminales
vim.o.t_SI = '\027[6 q'
vim.o.t_EI = '\027[2 q'
vim.o.t_ti = vim.o.t_ti .. '\027[2 q'
vim.o.t_te = vim.o.t_te .. '\027[6 q'


-- Función para habilitar LSP en buffers
local function on_lsp_buffer_enabled()
    vim.bo.omnifunc = 'lsp#complete'
end

-- Autocomandos para habilitar LSP
vim.cmd([[
    augroup lsp_install
        autocmd!
        autocmd User lsp_buffer_enabled lua on_lsp_buffer_enabled()
    augroup END
]])


vim.cmd([[
    augroup RestoreCursorShapeOnExit
        autocmd!
        autocmd VimLeave * set guicursor=a:ver20
    augroup END
]])

require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true,
	}
}
