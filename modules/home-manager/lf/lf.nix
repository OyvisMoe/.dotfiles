{ pkgs, lib, ... }:

{
  xdg.configFile."lf/icons".source = ./icons;

  programs.lf = {
    enable = true;

    commands = {
      dragon-out = ''%${pkgs.xdragon} -a -x "$fx"'';
      editor-open = ''$$EDITOR $f'';
      mkdir = ''
      ''${{
      printf "Directory Name: "
      read DIR 
      mkdir $DIR
      }}
      '';
      touch = ''
      ''${{
      printf "File Name: "
      read FILE
      touch $FILE
      }}
      '';
    };

    keybindings = {
      o = "";
      e = "";
      d = "";
      "\\\"" = "";
      c = "mkdir";
      C = "clear";
      D = "delete";
      U = "unselect";
      "." = "set hidden!";
      "`" = "mark-load";
      "\\'" = "mark-load";
      "<enter>" = "open";
      dd = "cut";
      do = "dragon-out";
      p = "paste";
      y = "copy";
      r = "reload";
      "g~" = "cd";
      gh = "cd";
      "g/" = "/";
      t = "touch";
      ee = "editor-open";
      V = ''''$${pkgs.bat}/bin/bat --paging=always --theme=gruvbox "$f"'';
    };
    settings = {
      preview = true;
      hidden = true;
      drawbox = true;
      icons = true;
      ignorecase = true;
    };
  };
}

