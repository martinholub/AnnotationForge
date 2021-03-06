\name{@ANNOBJPREFIX@ORGANISM}
\alias{@ANNOBJPREFIX@ORGANISM}
\title{The Organism for @ANNOBJPREFIX@}
\description{
  @ANNOBJPREFIX@ORGANISM is an R object that contains a single item: a
  character string that names the organism for which @ANNOBJPREFIX@ was built.
}

\details{
  Although the package name is suggestive of the organism for which it
  was built, @ANNOBJPREFIX@ORGANISM provides a simple way to programmatically
  extract the organism name.
}

\seealso{
  \itemize{
    \item \code{\link[AnnotationDbi]{AnnotationDb-class}} for use of
          the \code{select()} interface.
  }
}

\examples{
## select() interface:
## Objects in this package can be accessed using the select() interface
## from the AnnotationDbi package. See ?select for details.

## Bimap interface:
  @ANNOBJPREFIX@ORGANISM
}

\keyword{datasets}

