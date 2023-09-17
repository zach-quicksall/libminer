lib_summary <- function() {

  ## Get list of installed packages
  pkgs <- utils::installed.packages()

  ## Get a count of packages by library path
  pkg_tbl <- table(pkgs[, "LibPath"])

  ## Convert to dataframe
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")

  ## Return
  return(pkg_df)
}

