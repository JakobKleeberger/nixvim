{
  # Import all your configuration modules here
  imports = [
    ./cmp.nix
    ./coding/mini-pairs.nix
    ./coding/mini-surround.nix
    ./editor/gitsigns.nix
    ./editor/lazygit.nix
    ./editor/neo-tree.nix
    ./lsp
    ./options.nix
    ./telescope.nix
    ./treesitter.nix
    ./ui/bufferline.nix
    ./ui/lualine.nix
    ./ui/mini-icons.nix
    ./ui/noice.nix
    ./ui/mini-indentscope.nix
    ./ui/notify.nix
    ./utils/whichkey.nix
  ];

  colorschemes.gruvbox.enable = true;

  globals.mapleader = " ";

}
