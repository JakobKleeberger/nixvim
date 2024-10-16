{
  imports = [
    ./none-ls.nix
    ./fidget.nix
    ./lspkind.nix
    ./trouble.nix
  ];
  plugins = {
    lsp-format = {
      enable = true;
    };
    lsp = {
      enable = true;
      capabilities = "offsetEncoding = 'utf-8'";
      servers = {
        bashls.enable = true;
        nil_ls.enable = true;
        nixd.enable = true;
        gopls.enable = true;
        tailwindcss.enable = true;
        ts_ls = {
          enable = true;
          autostart = true;
          filetypes = [
            "javascript"
            "javascriptreact"
            "typescript"
            "typescriptreact"
          ];
        };
      };
      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          "<leader>ca" = {
            action = "code_action";
            desc = "Code Action";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "rename";
          };
        };
        extra = [
          {
            action = "vim.lsp.codelens.run";
            key = "<leader>cc";
            options.desc = "Run Codelens";
            mode = "n";
            lua = true;
          }
          {
            action = "vim.lsp.codelens.refresh";
            key = "<leader>cC";
            options.desc = "Refresh Codelens";
            mode = "n";
            lua = true;
          }
        ];
      };
    };
    rust-tools.enable = true;
  };
}
