if not vim.g.neovide then
  return
end

-- Font: thay "JetBrainsMono Nerd Font" bằng font bạn đang dùng
vim.o.guifont = "JetBrainsMono Nerd Font:h12"

-- Scale
vim.g.neovide_scale_factor = 1.0

-- Opacity (0.0 = trong suốt hoàn toàn, 1.0 = đục)
vim.g.neovide_opacity = 0.95

-- Ẩn chuột khi gõ
vim.g.neovide_hide_mouse_when_typing = true

-- Cursor animation
vim.g.neovide_cursor_animation_length = 0.08
vim.g.neovide_cursor_trail_size = 0.5
vim.g.neovide_cursor_antialiasing = true

-- Scroll animation
vim.g.neovide_scroll_animation_length = 0.3

-- Padding (pixels)
vim.g.neovide_padding_top = 8
vim.g.neovide_padding_bottom = 8
vim.g.neovide_padding_left = 8
vim.g.neovide_padding_right = 8

-- Keymaps cho clipboard (paste bằng Ctrl+Shift+V)
vim.keymap.set({ "n", "v" }, "<C-S-c>", '"+y', { desc = "Copy to system clipboard" })
vim.keymap.set({ "n", "v" }, "<C-S-v>", '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set("i", "<C-S-v>", "<C-r>+", { desc = "Paste from system clipboard" })
vim.keymap.set("c", "<C-S-v>", "<C-r>+", { desc = "Paste from system clipboard" })
