# This file was generated by the {rix} R package v0.5.1.9000 on 2024-02-02
# with following call:
# >rix(r_ver = "8ad5e8132c5dcf977e308e7bf5517cc6cc0bf7d8",
#  > r_pkgs = c("dplyr",
#  > "AER@1.2-8"),
#  > system_pkgs = c("quarto"),
#  > git_pkgs = list(package_name = "rix",
#  > repo_url = "https://github.com/b-rodrigues/rix/",
#  > branch_name = "master",
#  > commit = "da581f90273cb1ccfedbe18808097bf33b84d63c"),
#  > ide = "other",
#  > project_path = "inst/extdata",
#  > overwrite = TRUE,
#  > print = TRUE,
#  > shell_hook = NULL)
# It uses nixpkgs' revision 8ad5e8132c5dcf977e308e7bf5517cc6cc0bf7d8 for reproducibility purposes
# which will install R as it was as of nixpkgs revision: 8ad5e8132c5dcf977e308e7bf5517cc6cc0bf7d8
# Report any issues to https://github.com/b-rodrigues/rix
let
 pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/8ad5e8132c5dcf977e308e7bf5517cc6cc0bf7d8.tar.gz") {};
 rpkgs = builtins.attrValues {
  inherit (pkgs.rPackages) dplyr;
};
 git_archive_pkgs = [(pkgs.rPackages.buildRPackage {
    name = "rix";
    src = pkgs.fetchgit {
      url = "https://github.com/b-rodrigues/rix/";
      branchName = "master";
      rev = "da581f90273cb1ccfedbe18808097bf33b84d63c";
      sha256 = "sha256-eDAxkXSrX+Q5TWwzkwMDG5rB8VXFKaLJLLKEJEvxjeo=";
    };
    propagatedBuildInputs = builtins.attrValues {
      inherit (pkgs.rPackages) httr jsonlite sys;
    };
  }) (pkgs.rPackages.buildRPackage {
    name = "AER";
    src = pkgs.fetchzip {
      url = "https://cran.r-project.org/src/contrib/Archive/AER/AER_1.2-8.tar.gz";
      sha256 = "sha256-OqxXcnUX/2C6wfD5fuNayc8OU+mstI3tt4eBVGQZ2S0=";
    };
    propagatedBuildInputs = builtins.attrValues {
      inherit (pkgs.rPackages) car lmtest sandwich survival zoo Formula;
    };
  })];
  system_packages = builtins.attrValues {
  inherit (pkgs) R glibcLocales nix quarto;
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

    buildInputs = [ git_archive_pkgs rpkgs  system_packages  ];
      
  }
