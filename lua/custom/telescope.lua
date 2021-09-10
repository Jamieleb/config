local actions = require('telescope.actions')
local trouble = require('trouble.providers.telescope')

require('telescope').setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' >',
        color_devicons = true,
        file_ignore_patterns = { "node_modules/.*" },

        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

        mappings = {
            i = { ["<C-t>"] = trouble.open_with_trouble },
            n = {
              ["t"] = trouble.open_with_trouble
            },
        }
    },
    pickers = {
      buffers = {
        sort_lastused = true,
        theme = "dropdown",
        previewer = false,
        mappings = {
          i = {
            ["<c-d>"] = "delete_buffer",
          },
          n = {
            ["<c-d>"] = "delete_buffer",
          }
        }
      }
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
        }
    }
}

require('telescope').load_extension('fzf')
require('telescope').load_extension('octo')
require('telescope').load_extension('gh')

local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "~~Search Config Files~~",
        cwd = "$HOME/config",
    })
end

M.git_branches = function()
    require("telescope.builtin").git_branches({
        attach_mappings = function(_, map)
            map('i', '<c-d>', actions.git_delete_branch)
            map('n', '<c-d>', actions.git_delete_branch)
            return true
        end
    })
end

local search_path = function(path, title)
  require("telescope.builtin").find_files({
    prompt_title = title,
    cwd = path,
  })
end

M.search_word = function()
  require("telescope.builtin").grep_string({
    prompt_prefix = vim.fn.expand("<cword>") .. " > ",
  })
end

M.search_rails_models = function() return search_path('./app/models/', '~~Models~~') end
M.search_rails_controllers = function() return search_path('./app/controllers/', '~~Controllers~~') end
M.search_rails_views = function() return search_path('./app/views/', '~~Views~~') end
M.search_rails_components = function() return search_path('./app/webpacker/components/', '~~Components~~') end

return M
