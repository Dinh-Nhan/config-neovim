return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "selene",
        "luacheck",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = {
          format = function(diagnostic)
            local msg = diagnostic.message:gsub("\n", " ")
            local ok, lines = pcall(vim.api.nvim_buf_get_lines, 0, diagnostic.lnum, diagnostic.lnum + 1, false)
            local line_len = ok and vim.fn.strdisplaywidth(lines[1] or "") or 0
            local win_width = vim.api.nvim_win_get_width(0)
            local max_len = math.max(15, win_width - line_len - 12)
            if #msg > max_len then
              return msg:sub(1, max_len) .. "…"
            end
            return msg
          end,
        },
        float = { border = "rounded", source = true },
      },
    },
  },
}
