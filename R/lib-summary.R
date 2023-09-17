#' R Library Summary
#'
#' Provide a brief summary of the libraries on your machine
#'
#' @return A `data.frame` containing the count of
#'  packages in each of the user's libraries
#' @export
#'
#' @examples
#' lib_summary()
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

