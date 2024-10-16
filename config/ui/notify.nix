{
  plugins.notify = {
    enable = true;
    stages = "static";
    timeout = 3000;
  };
  keymaps = [
    {
      key = "<leader>un";
      action.__raw = "function()
        require('notify').dismiss({ silent = true, pending = true })
      end";
    }
  ];
}
