{ config, pkgs, ... }:
let
  inherit (config.colorScheme) colors;

  lockscreen-wallpaper = ''
    ${config.home.homeDirectory}/Pictures/wallpapers/rainbow.png
  '';
in
{
  home.packages = with pkgs; [ swaylock ];

  programs.swaylock.settings = {
    font = "Roboto Mono";
    font-size = 50;

    line-uses-inside = true;
    disable-caps-lock-text = true;
    indicator-caps-lock = true;
    indicator-idle-visible = true;
    daemonize = true;

    indicator-radius = 200;
    indicator-thickness = 20;

    image = lockscreen-wallpaper;

    color = "#${colors.base00}";
    ring-color = "#${colors.base02}";
    inside-wrong-color = "#${colors.base08}";
    ring-wrong-color = "#${colors.base08}";
    key-hl-color = "#${colors.base0B}";
    bs-hl-color = "#${colors.base08}";
    ring-ver-color = "#${colors.base09}";
    inside-ver-color = "#${colors.base09}";
    inside-color = "#${colors.base01}";
    text-color = "#${colors.base07}";
    text-clear-color = "#${colors.base01}";
    text-ver-color = "#${colors.base01}";
    text-wrong-color = "#${colors.base01}";
    text-caps-lock-color = "#${colors.base07}";
    inside-clear-color = "#${colors.base0C}";
    ring-clear-color = "#${colors.base0C}";
    inside-caps-lock-color = "#${colors.base09}";
    ring-caps-lock-color = "#${colors.base02}";
    separator-color = "#${colors.base02}";
  };
}
