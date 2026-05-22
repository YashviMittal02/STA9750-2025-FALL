#!/usr/bin/env Rscript
# Build the Quarto site and stage generated files for commit.

# Render the site (writes to ./docs per _quarto.yml)
quarto::quarto_render()

# Stage everything in docs/ so the rendered output is committed.
system2("git", c("add", "docs"))

message("Site rendered to ./docs and staged for commit.")
