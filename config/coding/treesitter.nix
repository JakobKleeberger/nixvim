{ config, pkgs, ... }:
{
  plugins.treesitter.enable = true;

  plugins.treesitter = {
    # folding = true;
    grammarPackages = config.plugins.treesitter.package.passthru.allGrammars ++ [
      pkgs.tree-sitter-grammars.tree-sitter-norg-meta
      pkgs.tree-sitter-grammars.tree-sitter-nu
    ];

    nixvimInjections = true;
    
    settings = {
      highlight = {
        additional_vim_regex_highlighting = true;
        enable = true;
        disable = # Lua
          ''
            function(lang, bufnr)
              return vim.api.nvim_buf_line_count(bufnr) > 10000
            end
          '';
      };

      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = "gnn";
          node_incremental = "grn";
          scope_incremental = "grc";
          node_decremental = "grm";
        };
      };

      # indent = {
      #   enable = true;
      # };
    };
  };
}
