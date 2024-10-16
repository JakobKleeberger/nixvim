{
  plugins.neo-tree = {
    enable = true;
    filesystem = {
      bindToCwd = false;
      followCurrentFile = {
        enabled = true;
      };
    };
  };
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>e";
      action = "<cmd>Neotree toggle<cr>";
      options = {
        desc = "Open/Close Neotree";
      };
    }
  ];
}
