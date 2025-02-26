
let
  pkgs = import (fetchTarball "https://github.com/rstats-on-nix/nixpkgs/archive/2024-12-14.tar.gz") {};
 
  rpkgs = builtins.attrValues {
    inherit (pkgs.rPackages) 
      AsioHeaders
      BH
      Biobase
      BiocGenerics
      BiocManager
      BiocVersion
      DBI
      DT
      DiceDesign
      FNN
      GPfit
      ICD10gm
      KMsurv
      KernSmooth
      LambertW
      MASS
      Matrix
      MatrixModels
      Polychrome
      R_cache
      R_methodsS3
      R_oo
      R_utils
      R6
      RANN
      RApiSerialize
      RColorBrewer
      ROCR
      RProtoBufLib
      RSpectra
      Rcpp
      RcppAnnoy
      RcppArmadillo
      RcppEigen
      RcppHNSW
      RcppParallel
      RcppProgress
      RcppTOML
      Rhdf5lib
      Rtsne
      S4Vectors
      SQUAREM
      Seurat
      SeuratObject
      SoupX
      SparseM
      VGAM
      WRS2
      abind
      askpass
      backports
      base64enc
      bestNormalize
      bit
      bit64
      bitops
      blob
      boot
      brew
      brio
      broom
      bslib
      butcher
      caTools
      cachem
      callr
      car
      carData
      cellranger
      class
      cli
      clipr
      clock
      cluster
      codetools
      collections
      colorspace
      commonmark
      conflicted
      corrplot
      cowplot
      cpp11
      crayon
      crosstalk
      curl
      cyclocomp
      cytolib
      data_table
      datawizard
      dbplyr
      deldir
      desc
      diagram
      dials
      dichromat
      diffobj
      digest
      doFuture
      doMC
      doParallel
      doRNG
      dotCall64
      dplyr
      dqrng
      dtplyr
      ellipsis
      emmeans
      estimability
      evaluate
      exactRankTests
      extraDistr
      fansi
      farver
      fastDummies
      fastmap
      finetune
      fitdistrplus
      flowCore
      fontawesome
      forcats
      foreach
      fs
      furrr
      future
      future_apply
      fuzzyjoin
      gargle
      generics
      geosphere
      ggplot2
      ggpubr
      ggrepel
      ggridges
      ggsci
      ggsignif
      ggtext
      glmnet
      globals
      glue
      goftest
      googledrive
      googlesheets4
      gower
      gplots
      gridExtra
      gridtext
      gtable
      gtools
      hardhat
      haven
      here
      highr
      hms
      htmltools
      htmlwidgets
      httpgd
      httpuv
      httr
      ica
      ids
      igraph
      infer
      insight
      ipred
      irlba
      isoband
      iterators
      janitor
      jomo
      jpeg
      jquerylib
      jsonlite
      km_ci
      knitr
      labeling
      lamW
      languageserver
      later
      lattice
      lava
      lazyeval
      leiden
      lhs
      lifecycle
      lintr
      listenv
      lme4
      lmtest
      lobstr
      lubridate
      magrittr
      mapproj
      maps
      markdown
      matrixStats
      maxstat
      mclust
      memoise
      mgcv
      mice
      mime
      miniUI
      minqa
      mitml
      modeldata
      modelenv
      modelr
      munsell
      mvtnorm
      nlme
      nloptr
      nnet
      nortest
      numDeriv
      openssl
      ordinal
      pals
      pan
      parallelly
      parsnip
      patchwork
      pbapply
      pbkrtest
      pheatmap
      pillar
      pkgbuild
      pkgconfig
      pkgload
      plotly
      plyr
      png
      polyclip
      polynom
      praise
      prettyunits
      processx
      prodlim
      progress
      progressr
      promises
      ps
      purrr
      qs
      quantreg
      ragg
      rappdirs
      readr
      readxl
      recipes
      rematch
      rematch2
      remotes
      renv
      repr
      reprex
      reshape
      reshape2
      reticulate
      rex
      rlang
      rmarkdown
      rngtools
      roxygen2
      rpart
      rprojroot
      rsample
      rstatix
      rstudioapi
      rvest
      sass
      scales
      scattermore
      scatterplot3d
      sctransform
      selectr
      shape
      shiny
      sitmo
      skimr
      slider
      snakecase
      sourcetools
      sp
      spam
      spatstat_data
      spatstat_explore
      spatstat_geom
      spatstat_random
      spatstat_sparse
      spatstat_utils
      stringdist
      stringfish
      stringi
      stringr
      styler
      survMisc
      survival
      survminer
      sys
      systemfonts
      tensor
      testthat
      textshaping
      tibble
      tidymodels
      tidyr
      tidyselect
      tidyverse
      timeDate
      timechange
      tinytex
      tune
      tzdb
      ucminf
      unigd
      utf8
      uuid
      uwot
      vctrs
      vip
      viridis
      viridisLite
      vroom
      waldo
      warp
      withr
      workflows
      workflowsets
      writexl
      xfun
      xgboost
      xml2
      xmlparsedata
      xtable
      yaml
      yardstick
      zoo;
  };
 
    CSFAtlasTools = (pkgs.rPackages.buildRPackage {
      name = "CSFAtlasTools";
      src = pkgs.fetchgit {
        url = "https://github.com/mihem/CSFAtlasTools";
        rev = "02d485896d383e2a876f0f3bbae7265c017e7e92";
        sha256 = "sha256-q9qBYrGrn96lG5I9xUuWCLw0CSnh7BA5Qs9AAcRtz0E=";
      };
      propagatedBuildInputs = builtins.attrValues {
        inherit (pkgs.rPackages) 
          dplyr
          glue
          readr
          ggplot2
          tidyr
          RColorBrewer
          bestNormalize
          pheatmap
          recipes
          tibble
          viridis
          broom
          WRS2
          Seurat
          abind
          mclust
          tune
          yardstick
          ggsignif;
      } ++ [ datathin ];
    });


    datathin = (pkgs.rPackages.buildRPackage {
      name = "datathin";
      src = pkgs.fetchgit {
        url = "https://github.com/anna-neufeld/datathin";
        rev = "58eb154609365fa7301ea0fa397fbf04dd8c28ed";
        sha256 = "sha256-rtRpwFI+JggX8SwnfH4SPDaMPK2yLhJFTgzvWT+Zll4=";
      };
      propagatedBuildInputs = builtins.attrValues {
        inherit (pkgs.rPackages) 
          VGAM
          knitr
          extraDistr
          mvtnorm;
      };
    });
    
  system_packages = builtins.attrValues {
    inherit (pkgs) 
      R
      glibcLocales
      nix;
  };
  
in

pkgs.mkShell {
  LOCALE_ARCHIVE = if pkgs.system == "x86_64-linux" then "${pkgs.glibcLocales}/lib/locale/locale-archive" else "";
  LANG = "en_US.UTF-8";
   LC_ALL = "en_US.UTF-8";
   LC_TIME = "en_US.UTF-8";
   LC_MONETARY = "en_US.UTF-8";
   LC_PAPER = "en_US.UTF-8";
   LC_MEASUREMENT = "en_US.UTF-8";

  buildInputs = [ CSFAtlasTools datathin rpkgs  system_packages   ];
  
}
