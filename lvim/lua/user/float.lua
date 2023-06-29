local M = {}

local calculate_centre_with_offset = function(length, offset)
  return length / 2 - offset
end

function M.create_centred_float(width, height, position_at_cursor)
  local ui = vim.api.nvim_list_uis()[1]
  local new_buf = vim.api.nvim_create_buf(false, false)
  vim.api.nvim_open_win(
    new_buf,
    true,
    {
      relative = position_at_cursor and 'cursor' or 'editor',
      row = position_at_cursor and 0 or calculate_centre_with_offset(ui.height, height / 2),
      col = position_at_cursor and 0 or calculate_centre_with_offset(ui.width, width / 2),
      height = height,
      width = width,
      border = 'single',
    }
  )
end

return M
