local lspServers = {
  lua_ls = {},
  nixd = {},
  clangd = {},
  basedpyright = {},
  csharp_ls = {},
  ocamllsp = {},
  rust_analyzer = {},
  zls = {},
  tsserver = {},
  eslint = {},
  html = {},
  cssls = {},
  tailwindcss = {},
  marksman = {},
}

return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      {"VonHeikemen/lsp-zero.nvim", branch = "v4.x"},
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local lsp_zero = require('lsp-zero')

local lsp_attach = function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end

lsp_zero.extend_lspconfig({
	    sign_text = {
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = '»',
  },
  lsp_attach = lsp_attach,
  capabilities = require('cmp_nvim_lsp').default_capabilities()
})

for server_name, config in pairs(lspServers) do
	require('lspconfig')[server_name].setup(config)
end

    end,
  },
}
