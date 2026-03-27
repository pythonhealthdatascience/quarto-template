# Source: Adapted from https://github.com/boettiger-lab/nasa-topst-env-justice (MIT)

#!/usr/bin/env bash
set -euo pipefail

# Ensure RStudio is running (idempotent)
if ! pgrep -x "rserver" > /dev/null 2>&1; then
  sudo rstudio-server start
fi

cat <<'EOF'
========================================
 Welcome to this R + Quarto Codespace
========================================

RStudio Server is available at:

  http://127.0.0.1:8787

In GitHub Codespaces:

- Open the "Ports" panel.
- Find the "RStudio (8787)" port.
- If it is not already open, choose "Open in browser".

Once RStudio is open, you can:
- Open a .qmd file
- Use the "Render" button or run:

    quarto::quarto_preview()

to preview your document.
========================================
EOF
