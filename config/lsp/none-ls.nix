{
  plugins.none-ls = {
    enable = true;
    sources = {
      diagnostics = {
        # golangci_lint.enable = true;
        # ktlint.enable = true;
      };
      formatting = {
        # gofmt.enable = true;
        # goimports.enable = true;
        # ktlint.enable = true;
        nixfmt.enable = true;
      };
    };
  };
  keymaps = [{
    key = "<leader>cf";
    action = "vim.lsp.buf.format";
    options.desc = "Format File";
    lua = true;
  }];
}
