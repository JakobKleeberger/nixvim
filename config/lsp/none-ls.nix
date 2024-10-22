{ pkgs, ... }:
{
  plugins.none-ls = {
    enable = true;
    sources = {
      # diagnostics = {
      #   golangci_lint.enable = true;
      #   ktlint.enable = true;
      # };
      formatting = {
        nixfmt = {
          enable = true;
          package = pkgs.nixfmt-rfc-style;
        };
        gofmt.enable = true;
        goimports.enable = true;
        treefmt.enable = true;
        ktlint.enable = true;
      };
    };
  };
  keymaps = [
    {
      key = "<leader>cf";
      action = "vim.lsp.buf.format";
      options.desc = "Format File";
      lua = true;
    }
  ];
}
