{
  editorconfig = {
    enable = true;
    settings = {
      "*" = {
        charset = "utf-8";
        end_of_line = "lf";
        trim_trailing_whitespace = true;
        insert_final_newline = true;
        max_line_width = 80;
      };
      "*.{nix,ml,lua,js,ts,jsx,tsx,html,css,astro}" = {
        indent_style = "space";
        indent_size = 2;
      };
      "*.{c,h,cpp,hpp,cc,cs,rs,py,zig}" = {
        indent_style = "space";
        indent_size = 4;
      };
    };
  };
}
