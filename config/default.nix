{ pkgs, ... }: {
  imports = [
    ./cmp
    ./coding
    ./editor
    ./lsp
    ./snippets
    ./ui
    ./utils
    ./options.nix
  ];

  extraPackages = with pkgs; [ ripgrep ];
}
