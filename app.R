# Launch the ShinyApp (Do not remove this comment)
# To deploy, run: rsconnect::deployApp()
# Or use the blue button on top of this file
library(tidyverse)

pkgload::load_all(export_all = FALSE,helpers = FALSE,attach_testthat = FALSE)
options( "golem.app.prod" = TRUE)

# Download and parse up-to-date files for app
lapply(list.files("dev", pattern = "setup", full.names = TRUE), source)

# Start the app running after download and parse step
minchem::run_app() # add parameters here (if any)
