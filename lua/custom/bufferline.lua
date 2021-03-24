require'bufferline'.setup{
  options = {
      view = "multiwindow",
      mappings = false,
      modified_icon = "●",
      left_trunc_marker = "",
      right_trunc_marker = "",
      max_name_length = 18,
      max_prefix_length = 15, -- prefix used when a buffer is deduplicated
      tab_size = 18,
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level)
        return "("..count..")"
      end,
      show_buffer_close_icons = false,
      show_close_icon = false,
      show_tab_indicators = true,
      persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
      enforce_regular_tabs = true,
      always_show_bufferline = false,
      sort_by = "directory"
  }
}
