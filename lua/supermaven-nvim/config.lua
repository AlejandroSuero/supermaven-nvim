local default_config = {
  keymaps = {
    accept_suggestion = "<Tab>",
    clear_suggestion = "<C-]>",
    accept_word = "<C-j>",
  },
  ignore_filetypes = {},
  disable_inline_completion = false,
  disable_keymaps = false
}

M = {}

M.setup_config = function(args)
  -- local config = vim.tbl_deep_extend("force", default_config, args or {})
  local config = vim.tbl_deep_extend("keep", args or {}, default_config)
  return config
end

return M

