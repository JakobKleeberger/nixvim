{
  plugins.treesitter.enable = true;

  plugins.treesitter = {
    settings = {
      auto_install = true;
      hightlight = {
	enable = true;
	additional_vim_regex_highlighting = true;
	custom_captures = true;
      };
      indent.enable = true;
    };
  };
}
