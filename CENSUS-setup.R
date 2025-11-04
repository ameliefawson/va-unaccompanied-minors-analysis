# CENSUS-setup.R
# Loads your Census API key from your local .Renviron (never commit your key!)

key <- Sys.getenv("CENSUS_API_KEY")

if (!nzchar(key)) {
  stop("No CENSUS_API_KEY found. Add it to your ~/.Renviron file (not in code).")
}

# Register key for current session
tidycensus::census_api_key(key, install = FALSE, overwrite = TRUE)
