{
  plugins = {
    cmp-cmdline.enable = true;
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        experimental = {
          ghost_text = true;
        };
        snippet = {
          expand = "luasnip";
        };
        sources = [
          { name = "nvim_lsp"; }
          { name = "luasnip"; }
          { name = "path"; }
          { name = "buffer"; }
          { name = "rg"; }
          { name = "nvim_lua"; }
          { name = "git"; }
        ];

        mapping = {
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";

          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";

          "<C-e>" = "cmp.mapping.abort()";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = false })";
          "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })";
        };
      };
    };
  };

  # Make Super-Tab work
  extraConfigLua = ''
    luasnip = require("luasnip")
    local cmp = require'cmp'
  '';
}
