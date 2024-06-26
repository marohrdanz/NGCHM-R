% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/package.R
\docType{package}
\name{NGCHM}
\alias{NGCHM}
\alias{NGCHM-package}
\title{Next Generation Clustered Heat Map (NGCHM) Construction Library}
\description{
NGCHM provides tools for defining the contents of a new NGCHM,
and for compiling and installing it on a NGCHM server.
}
\details{
Typical usage (see example) is to create a base NGCHM using chmNew; extend it with at
least one ngchmLayer; typically extend it further with an additional
ngchmLayer, row and column dendrograms, classification bars, and popup menu entries;
compile and install it on an available ngchmServer.

Note:
\itemize{
\item \code{chmNew()} requires \strong{git} to be installed.
\item \code{chmExportToFile()}, \code{chmExportToHTML()}, and \code{chmExportToPDF()} require
\strong{Java 11} and the \strong{\href{https://github.com/MD-Anderson-Bioinformatics/NGCHMSupportFiles}{NGCHMSupportFiles}}
package. The NGCHMSupportFiles package
can be installed with: \cr\cr
\code{install.packages('NGCHMDemoData', } \cr
\code{repos = c('https://md-anderson-bioinformatics.r-universe.dev',} \cr
\code{'https://cloud.r-project.org'))}
}
}
\section{Initialization}{

When first loaded the NGCHM library reads configuration files in
the directories specified by the NGCHMCONFIGPATH environment variable.  This is
a colon (:) separated list of directory names.  If not set it defaults to
/etc/ngchm:/usr/local/ngchm:/opt/ngchm:$HOME/.ngchm.
See NGCHM-initialization for details.
}

\examples{
# Examples using `chmNew()` require git to be installed.
# The NGCHMSupportFiles package is required by chmExportToFile and chmExportToPDF
# The NGCHMDemoData package is used to create a demo NGCHM
\dontrun{
  if (requireNamespace("NGCHMSupportFiles", quietly = TRUE)) {
    if (requireNamespace("NGCHMDemoData", quietly = TRUE)) {
      library(NGCHMSupportFiles)
      library(NGCHMDemoData)
      data(TCGA.GBM.EXPR, package = "NGCHMDemoData")
      chm1 <- chmNew("gbm", TCGA.GBM.EXPR[1:50, 1:50],
        rowAxisType = "bio.gene.hugo",
        colAxisType = "bio.tcga.barcode.sample.vial.portion.analyte.aliquot"
      )
      chmExportToFile(chm1, tempfile("gbm", fileext = ".ngchm"))
      chmExportToPDF(chm1, tempfile("gbm", fileext = ".pdf"))
    }
  }
  mat <- matrix(rnorm(100), nrow = 10)
  rownames(mat) <- sprintf("ABCA\%d", 1:10)
  colnames(mat) <- sprintf("Sample\%d", 1:10)
  chm <- chmNew("my-chm", mat)
}
}
\seealso{
\code{\link[=chmNew]{chmNew()}}

\code{\link[=chmAdd]{chmAdd()}}

\code{\link[=chmExportToFile]{chmExportToFile()}}

\code{\link[=chmExportToPDF]{chmExportToPDF()}}

\code{\link[=chmSetCollection]{chmSetCollection()}}

\code{\link[=chmInstall]{chmInstall()}}

\linkS4class{ngchm}
}
