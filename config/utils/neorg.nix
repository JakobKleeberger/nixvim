{ pkgs, ... }:
{
  plugins.neorg.enable = true;

  plugins.neorg = {
    autoLoad = true;
    package = pkgs.vimPlugins.neorg;
    settings.load = {
      "core.defaults" = {
	__empty = null;
      };
      "core.concealer" = {
	config = {
	  iconPreset = "diamond";
	};
      };
      "core.dirman" = {
	config = {
	  workspaces = {
	    notes = "~/.local/share/neorg/notes";
	    work = "~/.local/share/neorg/work";
	    nix = "~/.config/nix/docs";
	    rowlogic = "~/work/RowLogic/notes";
	  };
	  autoDetect = true;
	  autoChdir = true;
	  defaultWorkspace = "notes";
	};
      };
      "core.completion" = {
	config = {
	  engine = "nvim-cmp";
	};
      };
      "core.export" = {
	__empty = null;
      };
      "core.export.markdown" = {
	__empty = null;
      };
      "core.presenter" = {
	config = {
	  zen_mode = "zen-mode";
	};
      };
      "core.esupports.metagen" = {
	config = {
	  type = "auto";
	};
      };
      "core.journal" = {
	config = {
	  workspace = "notes";
	};
      };
      "core.summary" = {
	__empty = null;
      };
      "core.qol.todo_items" = {
	config = {
	  create_todo_parents = true;
	};
      };
      "core.integrations.image" = {
	__empty = null;
      };
      "core.latex.renderer" = {
	__empty = null;
      };
      "core.ui.calendar" = {
	__empty = null;
      };
      "core.todo-introspector" = {
	__empty = null;
      };
    };
  };

  plugins.image.enable = true;


  # plugins.orgmode.enable = true;
}
