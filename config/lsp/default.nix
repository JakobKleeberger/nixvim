{
  imports = [
    ./none-ls.nix
    ./fidget.nix
  ];
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        nil_ls.enable = true;

        gopls.enable = true;
      };
      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };
    };
    rust-tools.enable = true;
  };
}
