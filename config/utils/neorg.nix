{
  plugins.neorg = {
    enable = true;
    telescopeIntegration.enable = true;

    settingsOptions = {
      load = {
        "core.defaults" = { };
        "core.completion" = { };
        "core.concealer" = { };
        "core.dirman" = {
          config = {
            workspaces = {
              home = "~/notes/home";
            };
          };
        };
        "core.export" = { };
        "core.export.markdown" = { };
        "core.latex.renderer" = { };
        "core.presenter" = { };
        "core.summary" = { };
        "core.text-objects" = { };
      };
    };
  };
}
