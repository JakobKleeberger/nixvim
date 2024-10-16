{ pkgs, ... }:
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
    ./ui/dressing.nix
    ./ui/lualine.nix
    ./ui/mini-icons.nix
    ./ui/mini-indentscope.nix
    ./ui/noice.nix
    ./ui/notify.nix
    ./utils/whichkey.nix
  ];

  extraPackages = with pkgs; [ ripgrep ];

  colorschemes.gruvbox = {
    enable = true;
    settings = {
      transparent_mode = true;
    };
  };

}
