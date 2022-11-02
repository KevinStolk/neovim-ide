local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

local servers = {
	"sumneko_lua",
	"cssls",
	"html",
	"tsserver",
	"pyright",
	"sourcekit",
	"bashls",
	"jsonls",
	"yamlls",
	"tailwindcss",
}

lsp_installer.setup()

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("kevin.lsp.handlers").on_attach,
		capabilities = require("kevin.lsp.handlers").capabilities,
	}
	if server == "tsserver" then
		local tsserver_opts = require("kevin.lsp.settings.tsserver")
		opts = vim.tbl_deep_extend("force", tsserver_opts, opts)
	end

	if server == "tailwindcss" then
		local tailwindcss_opts = require("kevin.lsp.settings.tailwindcss")
		opts = vim.tbl_deep_extend("force", tailwindcss_opts, opts)
	end

	if server == "sumneko_lua" then
		local sumneko_opts = require("kevin.lsp.settings.sumneko_lua")
		opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	end

	if server == "pyright" then
		local pyright_opts = require("kevin.lsp.settings.pyright")
		opts = vim.tbl_deep_extend("force", pyright_opts, opts)
	end

	lspconfig[server].setup(opts)
end
