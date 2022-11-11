local _status, telescope = pcall(require, "telescope")
if not _status then
  return
end

local actions_status, actions = pcall(require, "telescope.actions")
if not action_status then
  return
end

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
      }
    }
  }
})

telescope.load_extension("fzf")
