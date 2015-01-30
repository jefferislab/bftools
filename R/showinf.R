#' Extract metadata for an image using bioformats
#' 
#' @param f Path to input file
#' @param outfile Character vector specifying path to output file, or a logical 
#'   value. When \code{outfile=TRUE}, a path of \code{/path/to/input.lsm} will 
#'   result in an output file of \code{/path/to/input.txt}. When
#'   \code{outfile=NULL}, the result will be passed straight to
#' @export
showinf<-function(f, ..., outfile=NULL) {
  si=system.file("java","showinf", package='bftools')
  stdout = if(is.null(outfile)) TRUE
  else if(is.logical(outfile) && isTRUE(outfile)) {
    paste0(tools::file_path_sans_ext(f
                                     ),".txt")
  } else outfile
  system2(si, args=c("-nopix", "-no-upgrade", ..., shQuote(path.expand(f))), 
          stdout=stdout)
}
