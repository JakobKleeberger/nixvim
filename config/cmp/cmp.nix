{
  plugins.cmp = {
    enable = true;

    autoEnableSources = true;
    settings.sources = [
      { name = "nvim_lsp"; }
      { name = "path"; }
      { name = "buffer"; }
    ];
  };

  plugins.cmp.settings.mapping = {
    "<CR>" = "cmp.mapping.confirm({ select = true })";
    "<Esc>" = "cmp.mapping.abort()";
    "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
    "<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
  };
}
