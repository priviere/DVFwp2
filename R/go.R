#' @export
go <- function() {
  appDir <- system.file("myapp", package = "DVFwp2")
  shiny::runApp(appDir, display.mode = "normal")
}