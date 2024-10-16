{ 
  plugins.gitsigns = {
    enable = true;
    settings = {
      signs = {
    add = { text = "▎"; };
    change = { text = "▎"; };
    delete = { text = ""; };
    topdelete = { text = ""; };
    changedelete = { text = "▎"; };
    untracked = { text = "▎"; };
  };
      # signs = {
      #   add = {
      #     text = " ";
      #   };
      #   change = {
      #     text = " ";
      #   };
      #   delete = {
      #     text = " ";
      #   };
      #   untracked = {
      #     text = "";
      #   };
      #   topdelete = {
      #     text = "󱂥 ";
      #   };
      #   changedelete = {
      #     text = "󱂧 ";
      #   };
      # };
      #
  };
  };
}
