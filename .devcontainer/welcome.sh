# Source: Adapted from https://github.com/boettiger-lab/nasa-topst-env-justice (MIT)

# Construct the message
message="## [Open in RStudio](https://$CODESPACE_NAME-8787.app.github.dev)
"
# Echo the message to the terminal
echo "
👋 Welcome to Codespaces! You are on our custom image. 
   - It includes runtimes and tools for R using RStudio 

🌐 Open the RStudio editor here: https://$CODESPACE_NAME-8787.app.github.dev
   - (This may take a few seconds to load, retry if necessary)
"