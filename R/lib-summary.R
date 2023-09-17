#' R Library Summary
#'
#' Provide a brief summary of the libraries on your machine
#'
#' @param sizes logical indicating whether to calculate total library size.
#'  Default `FALSE`.
#'
#' @return A `data.frame` containing the count of
#'  packages in each of the user's libraries
#' @export
#' @examples
#' lib_summary()
lib_summary <- function(sizes = FALSE) {

  if (!is.logical(sizes)) {
    stop("'sizes' must be TRUE or FALSE.")
  }

  ## Get list of installed packages
  pkgs <- utils::installed.packages()

  ## Get a count of packages by library path
  pkg_tbl <- table(pkgs[, "LibPath"])

  ## Convert to dataframe
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")

  ## Compute size of libraries (if TRUE)
  if (sizes) {
    pkg_df$lib_size <- sapply(
      pkg_df$Library,
      function(x) {
        sum(fs::file_size(fs::dir_ls(x, recurse = TRUE)))
      }
    )
  }

  ## Return
  return(pkg_df)

}

