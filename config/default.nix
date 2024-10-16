{
  # Import all your configuration modules here
  imports = [
    ./cmp.nix
    ./coding/mini-pairs.nix
    ./ui/bufferline.nix
    ./lsp
    ./options.nix
    ./telescope.nix
    ./editor/neo-tree.nix
    ./treesitter.nix
    ./ui/noice.nix
    ./ui/lualine.nix
    ./utils/whichkey.nix
  ];

  colorschemes.gruvbox.enable = true;

  globals.mapleader = " ";

}
