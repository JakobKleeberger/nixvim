{
  plugins.neorg.enable = true;

  plugins.neorg = {
    autoLoad = true;
  };
  # plugins.neorg = {
  #   enable = true;
  #   telescopeIntegration.enable = true;
  #   autoLoad = true;
  #
  #   settings = {
  #     load = {
  #       "core.defaults" = { };
  #       "core.completion" = { };
  #       "core.concealer" = {
  #         config = {
  #           folds = true;
  #         };
  #       };
  #       "core.dirman" = {
  #         config = {
  #           workspaces = {
  #             home = "~/notes/home";
  #           };
  #           index = "index.norg";
  #         };
  #       };
  #       "core.export" = {
  #         config = {
  #           export_dir = "~/notes";
  #         };
  #       };
  #       "core.export.markdown" = { };
  #       "core.latex.renderer" = { };
  #       "core.presenter" = { };
  #       "core.summary" = { };
  #       "core.text-objects" = { };
  #     };
  #   };
  # };

  plugins.orgmode.enable = true;
}
