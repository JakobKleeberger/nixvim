{
  plugins.oil = {
    enable = true;
    settings = {
      deleteToTrash = true;
      useDefaultKeymaps = true;
      viewOptions = {
        showHidden = true;
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>o";
      action = ":Oil --float<CR>";
      options = {
        desc = "Open parent directory";
        silent = true;
      };
    }
  ];
}
