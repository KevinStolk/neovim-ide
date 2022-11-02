-- local status_ok, bufferline = pcall(require, "bufferline")
-- if not status_ok then
--   return
-- end
--
-- bufferline.setup {
--   options = {
--     mode = "tabs",
--     close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
--     right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
--     offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
--         show_buffer_close_icon = false,
--         show_close_icon = false,
--         always_show_bufferline = false,
--         color_icons = true,
--     separator_style = "slant", -- | "thick" | "thin" | { 'any', 'any' },
--   },
--   highlights = {
--     fill = {
--       guifg = { attribute = "fg", highlight = "#ff0000" },
--       guibg = { attribute = "bg", highlight = "TabLine" },
--     },
--     background = {
--       guifg = { attribute = "fg", highlight = "TabLine" },
--       guibg = { attribute = "bg", highlight = "TabLine" },
--     },
--
--     buffer_visible = {
--       guifg = { attribute = "fg", highlight = "TabLine" },
--       guibg = { attribute = "bg", highlight = "TabLine" },
--     },
--
--     close_button = {
--       guifg = { attribute = "fg", highlight = "TabLine" },
--       guibg = { attribute = "bg", highlight = "TabLine" },
--     },
--     close_button_visible = {
--       guifg = { attribute = "fg", highlight = "TabLine" },
--       guibg = { attribute = "bg", highlight = "TabLine" },
--     },
--
--     tab_selected = {
--       guifg = { attribute = "fg", highlight = "Normal" },
--       guibg = { attribute = "bg", highlight = "Normal" },
--     },
--     tab = {
--       guifg = { attribute = "fg", highlight = "TabLine" },
--       guibg = { attribute = "bg", highlight = "TabLine" },
--     },
--     tab_close = {
--       guifg = { attribute = "fg", highlight = "TabLineSel" },
--       guibg = { attribute = "bg", highlight = "Normal" },
--     },
--
--     duplicate_selected = {
--       guifg = { attribute = "fg", highlight = "TabLineSel" },
--       guibg = { attribute = "bg", highlight = "TabLineSel" },
--       gui = "italic",
--     },
--     duplicate_visible = {
--       guifg = { attribute = "fg", highlight = "TabLine" },
--       guibg = { attribute = "bg", highlight = "TabLine" },
--       gui = "italic",
--     },
--     duplicate = {
--       guifg = { attribute = "fg", highlight = "TabLine" },
--       guibg = { attribute = "bg", highlight = "TabLine" },
--       gui = "italic",
--     },
--
--     modified = {
--       guifg = { attribute = "fg", highlight = "TabLine" },
--       guibg = { attribute = "bg", highlight = "TabLine" },
--     },
--     modified_selected = {
--       guifg = { attribute = "fg", highlight = "Normal" },
--       guibg = { attribute = "bg", highlight = "Normal" },
--     },
--     modified_visible = {
--       guifg = { attribute = "fg", highlight = "TabLine" },
--       guibg = { attribute = "bg", highlight = "TabLine" },
--     },
--
--     separator = {
--       guifg = { attribute = "bg", highlight = "TabLine" },
--       guibg = { attribute = "bg", highlight = "TabLine" },
--     },
--     separator_selected = {
--       guifg = { attribute = "bg", highlight = "Normal" },
--       guibg = { attribute = "bg", highlight = "Normal" },
--     },
--     indicator_selected = {
--       guifg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
--       guibg = { attribute = "bg", highlight = "Normal" },
--     },
--   },
-- }
--
local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

bufferline.setup({
	options = {
		mode = "tabs",
		separator_style = "slant",
		always_show_bufferline = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		color_icons = true,
	},
	-- highlights = {
	-- 	separator = {
	-- 		fg = "#3c3836",
	-- 		bg = "#282828",
	-- 	},
	-- 	separator_selected = {
	-- 		fg = "#3c3836",
	-- 	},
	-- 	background = {
	-- 		fg = "#657b83",
	-- 		bg = "#3c3836",
	-- 	},
	-- 	buffer_selected = {
	-- 		fg = "#fdf6e3",
	-- 		undercurl = true,
	-- 	},
	-- 	fill = {
	-- 		bg = "#3c3836",
	-- 	},
	-- },
})

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
