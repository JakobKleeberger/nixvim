{
  plugins.telescope.enable = true;

  plugins.telescope.keymaps = {
    "<leader>ff" = {
      action = "find_files";
    };
    "<leader>fw" = {
      action = "live_grep";
    };
    "<leader>fb" = {
      action = "buffers";
    };
  };
}
