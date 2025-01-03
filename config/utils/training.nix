{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    precognition-nvim
  ];

  extraConfigLua = ''
    require("precognition").setup({
      startVisible = false,
    })
    require("precognition").hide()
  '';

  keymaps = [
    {
      key = "<leader>vh";
      action = ''
        function()
          require("precognition").toggle()
          require("hardtime").toggle()
        end
      '';
      options = {
        desc = "Toggle precognition and hardtime";
      };
      mode = [
        "n"
      ];
    }
  ];

  plugins.hardtime = {
    enable = true;
    settings = {
      enabled = false;
    };
  };
}
