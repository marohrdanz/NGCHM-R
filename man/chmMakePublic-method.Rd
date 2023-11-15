% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/allGenerics.R, R/allMethods.R
\name{chmMakePublic}
\alias{chmMakePublic}
\alias{chmMakePublic,ngchmServer,character-method}
\alias{chmMakePublic,ngchmServer,ngchm-method}
\alias{chmMakePublic,character,ngchm-method}
\alias{chmMakePublic,character,character-method}
\title{Make an installed NGCHM public.}
\usage{
chmMakePublic(server, chm)

\S4method{chmMakePublic}{ngchmServer,character}(server, chm)

\S4method{chmMakePublic}{ngchmServer,ngchm}(server, chm)

\S4method{chmMakePublic}{character,ngchm}(server, chm)

\S4method{chmMakePublic}{character,character}(server, chm)
}
\arguments{
\item{server}{The server on which the NGCHM to make public is installed.}

\item{chm}{The NGCHM to make public.}
}
\description{
Make public the specified Next Generation Clustered Heat Map (NGCHM) on the specified server.
}
\seealso{
\linkS4class{ngchmServer}

\linkS4class{ngchm}

\code{\link[=chmInstall]{chmInstall()}}

\code{\link[=chmUninstall]{chmUninstall()}}

\code{\link[=chmMakePrivate]{chmMakePrivate()}}
}