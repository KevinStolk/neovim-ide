local status, prettier = pcall(require, "prettier")
if not status then
	return
end

prettier.setup({
	tab_width = 4,
	jsx_single_quote = true,
	single_quote = true,
	bin = "prettierd",
	filetypes = {
		"css",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"http",
		"json",
		"scss",
		"less",
	},
})
