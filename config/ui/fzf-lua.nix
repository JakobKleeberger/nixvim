{
  plugins.fzf-lua = {
    enable = true;
    profile = "telescope";
    keymaps = {
      "<leader>ff" = {
        action = "files";
        options.desc = "Find project files";
      };
      "<leader>fg" = {
        action = "live_grep";
        options.desc = "Find text";
      };
    };
  };
}
