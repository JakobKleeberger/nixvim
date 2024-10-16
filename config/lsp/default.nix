{
  imports = [ ./none-ls.nix ./fidget.nix ./trouble.nix ];
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        nil_ls.enable = true;

        gopls.enable = true;
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
          "<leader>cr" = { action = "rename"; 
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
