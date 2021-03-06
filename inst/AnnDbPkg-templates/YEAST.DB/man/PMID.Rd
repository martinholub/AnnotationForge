\name{@ANNOBJPREFIX@PMID}
\alias{@ANNOBJPREFIX@PMID}
\alias{@ANNOBJPREFIX@PMID2ORF}
\title{Map between ORF Identifiers and PubMed Identifiers}
\description{
   @ANNOBJPREFIX@PMID is an R object that provides mappings between
   ORF identifiers and PubMed identifiers.
}
\details{
  Each ORF identifier is mapped to a named vector of PubMed identifiers. The
  name associated with each vector corresponds to the ORF identifier. 
  The length of the vector may be one or greater, depending on how
  many PubMed identifiers a given ORF identifier is mapped to. An \code{NA} is
  reported for any ORF identifier that cannot be mapped to a PubMed identifier.

  Titles, abstracts, and possibly full texts of articles can be obtained
  from PubMed by providing a valid PubMed identifier. The pubmed function of
  annotate can also be used for the same purpose.

  Mappings were based on data provided by: @PMIDSOURCE@

}

\references{
  \url{https://www.ncbi.nlm.nih.gov/entrez/query.fcgi?db=PubMed}
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
x <- @ANNOBJPREFIX@PMID
# Get the ORF identifiers that are mapped to any PubMed ID
mapped_genes <- mappedkeys(x)
# Convert to a list
xx <- as.list(x[mapped_genes])
if(length(xx) > 0){
    # The ORF identifiers for the first two elements of XX
    xx[1:2]
    # Get the first one
    xx[[1]]
    if(interactive() && !is.null(xx[[1]]) && !is.na(xx[[1]])
       && require(annotate)){
        # Gets article information as XML files
        xmls <- pubmed(xx[[1]], disp = "data")
        # Views article information using a browser
        pubmed(xx[[1]], disp = "browser")
    }
}
# Convert the object to a list
xx <- as.list(@ANNOBJPREFIX@PMID2ORF)
if(length(xx) > 0){
    # The ORF identifiers for the first two elements of XX
    xx[1:2]
    # Get the first one
    xx[[1]]
    if(interactive() && require(annotate)){
        # Gets article information as XML files for a PubMed id
        xmls <- pubmed(names(xx)[1], disp = "data")
        # Views article information using a browser
        pubmed(names(xx)[1], disp = "browser")
    }
}
}

\keyword{datasets}

