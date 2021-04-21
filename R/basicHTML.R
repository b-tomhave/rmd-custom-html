#' Convert to a Basic Custom styled HTML Document
#'
#' Format for converting from R Markdown to Basic Custom styled HTML Document. Basic defaults are listed but can be updated in YAML.
#'
#' @inheritParams rmarkdown::html_document
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown]{render}}
#' with the custom basic theme.
#'
#' @details
#'
#' See R Markdown documentation for details on yaml \link[rmarkdown]{metadata}.
#'
#' @examples
#' \dontrun{
#'
#' library(rmarkdown)
#'
#' # create a new draft presentation
#' rmarkdown::draft("report.Rmd", template = "basicHTML", package = "rmdCustomHTML")
#'
#' # simple invocation
#' rmarkdown::render("report.Rmd", basicHTML())
#' }
#'
#' @export
basicHTML <- function(css = system.file("rmarkdown/templates/basicHTML/resources/style.css", package = "rmdCustomHTML"),
                      toc = TRUE,
                      toc_Depth = 4,
                      toc_float = TRUE,
                      ...) {

  # call the base html_document function
  rmarkdown::html_document(css       = css,
                           toc       = toc,
                           toc_depth = toc_Depth,
                           toc_float = toc_float,
                           ...)
}

