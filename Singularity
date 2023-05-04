BootStrap: docker
From: r-base:4.2.3

%labels
  Author Sylvain Schmitt

%help
  This will run LoggingLab R package
  
%files
  install.R /install.R

%post
  export DEBIAN_FRONTEND=noninteractive \
  && apt-get update -qq \
    && apt-get install -y \
    --no-install-recommends \
    libudunits2-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libgdal-dev \
    libgsl-dev \
    libnode-dev \
    libsodium-dev \
    xorg \
    libx11-dev \
    libglu1-mesa-dev \
    libfreetype6-dev \
    libfontconfig1-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    cmake \
    && Rscript install.R \
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds \
    && rm install.R
    