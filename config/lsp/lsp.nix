{
  plugins.lsp = {
    enable = true;

    servers = {
      lua_ls.enable = true;
      nil_ls.enable = true;
      nixd = {
        enable = true;
        settings.options = {
          home_manager.expr = ''
            let configs = (builtins.getFlake ("git+file://" + builtins.toString ./.)).homeConfigurations; in (builtins.head (builtins.attrValues configs)).options
          '';
        };
      };
      pyright.enable = true;
      cmake.enable = true;
      clangd.enable = true;
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
    };
  };

  plugins.lsp.keymaps = {
    silent = true;
    lspBuf = {
      gd = {
        action = "definition";
        desc = "Goto Definition";
      };
      gr = {
        action = "references";
        desc = "Goto References";
      };
      gD = {
        action = "declaration";
        desc = "Goto Declaration";
      };
      gI = {
        action = "implementation";
        desc = "Goto Implementation";
      };
      gT = {
        action = "type_definition";
        desc = "Type Definition";
      };
      K = {
        action = "hover";
        desc = "Hover";
      };
      "<leader>cw" = {
        action = "workspace_symbol";
        desc = "Workspace Symbol";
      };
      "<leader>rr" = {
        action = "rename";
        desc = "Rename";
      };
    };
    diagnostic = {
      "<leader>cd" = {
        action = "open_float";
        desc = "Line Diagnostics";
      };
      "[d" = {
        action = "goto_next";
        desc = "Next Diagnostic";
      };
      "]d" = {
        action = "goto_prev";
        desc = "Previous Diagnostic";
      };
    };
  };
}
