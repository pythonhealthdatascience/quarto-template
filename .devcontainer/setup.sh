# Source: Adapted from https://github.com/boettiger-lab/nasa-topst-env-justice (MIT)

#!/usr/bin/env bash
set -euo pipefail

# Ensure RStudio runs without password inside Codespace
if [ -f /etc/rstudio/disable_auth_rserver.conf ]; then
  sudo cp /etc/rstudio/disable_auth_rserver.conf /etc/rstudio/rserver.conf
fi

# Make sure USER is rstudio so RStudio knows who to log in
sudo bash -c 'echo "USER=rstudio" >> /etc/environment'

# Start RStudio Server in the background if not running
if ! pgrep -x "rserver" > /dev/null 2>&1; then
  sudo rstudio-server start
fi

# Minimal R packages you might want – optional
Rscript -e 'install.packages(c("quarto"), repos = "https://cloud.r-project.org")' || true
