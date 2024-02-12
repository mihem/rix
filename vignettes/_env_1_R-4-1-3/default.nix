# This file was generated by the {rix} R package v0.6.0 on 2024-02-12
# with following call:
# >rix(r_ver = "6e3a86f2f73a466656a401302d3ece26fba401d9",
#  > project_path = path_env_1,
#  > overwrite = TRUE)
# It uses nixpkgs' revision 6e3a86f2f73a466656a401302d3ece26fba401d9 for reproducibility purposes
# which will install R version 4.1.3
# Report any issues to https://github.com/b-rodrigues/rix
let
 pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/6e3a86f2f73a466656a401302d3ece26fba401d9.tar.gz") {};
    system_packages = builtins.attrValues {
  inherit (pkgs) R glibcLocales nix ;
};
  in
  pkgs.mkShell {
    LOCALE_ARCHIVE = if pkgs.system == "x86_64-linux" then  "${pkgs.glibcLocales}/lib/locale/locale-archive" else "";
    LANG = "en_US.UTF-8";
    LC_ALL = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";

    buildInputs = [    system_packages  ];
      
  }
