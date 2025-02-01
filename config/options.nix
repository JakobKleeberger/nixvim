{
  colorschemes.catppuccin.enable = true;

  clipboard.register = "unnamedplus";
  clipboard.providers.wl-copy.enable = true;

  performance = {
    byteCompileLua = {
      enable = true;
      nvimRuntime = true;
      configs = true;
      plugins = true;
    };
  };

  opts = {
    number = true;
    relativenumber = true;

    shiftwidth = 4;

    cursorline = true;

    scrolloff = 10;
  };

  globals.mapleader = " ";

  keymaps = [
    # {
    #   key = "<leader>b";
    #   action = "<cmd>:Ex<CR>";
    # }
    {
      key = "<leader>b";
      action = "<C-O>";
    }
  ];
}
