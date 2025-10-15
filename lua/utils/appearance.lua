local Module = {}

local whitelist = {
  "Visual",
  "VisualNOS",
  "CursorLine",
  "ColorColumn",
  "Search",
  "IncSearch",
  "PmenuSel",
  "CurSearch",
}
function Module.make_transparent()
  local groups = vim.fn.getcompletion("", "highlight")
  for _, group in ipairs(groups) do
    if not vim.tbl_contains(whitelist, group) then
      local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = group })
      if ok then
        hl.bg = nil  -- remove only background
        pcall(vim.api.nvim_set_hl, 0, group, hl)
      end
    end
  end
end

return Module
