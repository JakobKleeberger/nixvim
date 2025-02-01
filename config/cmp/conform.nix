{ pkgs
, lib
, ...
}: {
  plugins.conform-nvim = {
    enable = true;

    settings = {
      formatters_by_ft = {
        lua = [ "stylua" ];
        nix = [ "alejandra" "nixpkgs_fmt" ];
        python = [ "black" "isort" ];
        c = [ "clang-format" ];
        rust = [ "rustfmt" ];
      };

      formatters = {
        alejandra = {
          command = "${lib.getExe pkgs.alejandra}";
        };
        nixpkgs_fmt = {
          command = "${lib.getExe pkgs.nixpkgs-fmt}";
        };
        stylua = {
          command = "${lib.getExe pkgs.stylua}";
        };
        black = {
          command = "${lib.getExe pkgs.black}";
        };
        isort = {
          command = "${lib.getExe pkgs.isort}";
        };
        clang-format = {
          command = "${lib.getExe pkgs.clang}";
        };
        rustfmt = {
          command = "${lib.getExe pkgs.rustfmt}";
        };
      };

      format_on_save = ''
        function(bufnr)
          if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            return
          end

          local function on_format(err)
            if err and err:match("timeout$") then
              slow_format_filetypes[vim.bo[bufnr].filetype] = true
            end
          end

          return { timeout_ms = 200, lsp_fallback = true }, on_format
         end
      '';
    };
  };
}
