-- Telescope
local telescope = require('telescope')
telescope.setup {
    defaults = {
        vimgrep_arguments = {
            'rg', '--hidden', '--color=never', '--no-heading',
            '--with-filename', '--line-number', '--column', '--smart-case'
        },
        prompt_position = "top",
        prompt_prefix = ">",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "vertical",
        layout_defaults = {
            horizontal = {
                width_padding = 0.1,
                height_padding = 0.1,
                preview_width = 0.62
            },
            vertical = {
                width_padding = 0.08,
                height_padding = 0.12,
                preview_height = 0.62
            }
        },
        file_sorter = require'telescope.sorters'.get_fuzzy_file,
        file_ignore_patterns = {".git"},
        generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
        shorten_path = true,
        winblend = 0,
        width = 1,
        preview_cutoff = 120,
        results_height = 0.62,
        results_width = 1,
        border = {},
        borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
        color_devicons = true,
        use_less = true,
        set_env = {['COLORTERM'] = 'truecolor'}, -- default { }, currently unsupported for shells like cmd.exe / powershell.exe
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new, -- For buffer previewer use `require'telescope.previewers'.vim_buffer_cat.new`
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new, -- For buffer previewer use `require'telescope.previewers'.vim_buffer_vimgrep.new`
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new -- For buffer previewer use `require'telescope.previewers'.vim_buffer_qflist.new`
    }
}
