# Source: Adapted from https://github.com/boettiger-lab/nasa-topst-env-justice (MIT)

# Start with version-stable build of R, RStudio Server, and R packages.
FROM ghcr.io/rocker-org/devcontainer/tidyverse:4.5

USER rstudio
WORKDIR /home/rstudio
RUN usermod -s /bin/bash rstudio
ENV PATH=$PATH:/home/rstudio/.local/bin