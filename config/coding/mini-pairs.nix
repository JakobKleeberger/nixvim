{
  plugins.mini = {
    enable = true;
    modules = {
      pairs = {
        skip_next = ''[=[[%w%%%'%[%"%.%`%$]]=]'';
        skip_ts = [ "string" ];
        modes = { insert = true; command = true; terminal = false; };
        skip_unbalanced = true;
        markdown = true;
      };
    };
  };
}
