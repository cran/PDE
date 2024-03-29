% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PDE.R
\name{PDE_check_Xpdf_install}
\alias{PDE_check_Xpdf_install}
\title{Check if the Xpdftools are installed an in the system path}
\usage{
PDE_check_Xpdf_install(sysname = NULL, verbose = TRUE)
}
\arguments{
\item{sysname}{String. In case the function returns "Unknown OS" the sysname can be set manually.
Allowed options are "Windows", "Linux",  "SunOS" for Solaris, and "Darwin" for Mac. Default: \code{NULL}.}

\item{verbose}{Logical. Indicates whether messages will be printed in the console. Default: \code{TRUE}.}
}
\value{
The function returns a Boolean for the installation status and a message in case
the commands are not detected.
}
\description{
\code{PDE_check_Xpdf_install} runs a version test for pdftotext, pdftohtml and pdftopng.
}
\examples{

PDE_check_Xpdf_install()

}
