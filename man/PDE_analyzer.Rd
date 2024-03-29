% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PDE.R
\name{PDE_analyzer}
\alias{PDE_analyzer}
\title{Extracting data from PDF (Portable Document Format) files}
\usage{
PDE_analyzer(PDE_parameters_file_path = NA, verbose = TRUE)
}
\arguments{
\item{PDE_parameters_file_path}{String. This file includes all parameters to
run \code{\link{PDE_extr_data_from_pdfs}} on multiple PDF files. If
\code{PDE_parameters_file_path} does not exist or is \code{NA} a dialog box
is opened prompting the user to select the parameter file.}

\item{verbose}{Logical. Indicates whether messages will be printed in the console. Default: \code{TRUE}.}
}
\value{
If tables were extracted from the PDF file the function returns a list of
 following tables/items: 1) \strong{htmltablelines}, 2)
 \strong{txttablelines}, 3) \strong{keeplayouttxttablelines}, 4) \strong{id},
 5) \strong{out_msg}.
 The \strong{tablelines} are tables that provide the heading and position of
 the detected tables. The \strong{id} provide the name of the PDF file. The
 \strong{out_msg} includes all messages printed to the console or the suppressed
 messages if \code{verbose=FALSE}.
}
\description{
The \code{PDE_analyzer} allows the sentence and table extraction from multiple
PDF files.
}
\section{Details}{
 The parameter file (also referred to as .tsv file) can
 either manually or with the help of the \code{\link{PDE_analyzer_i}}
 interface be filled.
}

\section{Note}{
 A detailed description of the parameters in the TSV file can be
 found in the markdown file (README_PDE.md) and in the description of
 \code{\link{PDE_extr_data_from_pdfs}}.
}

\examples{
 if(PDE_check_Xpdf_install() == TRUE){
   PDE_analyzer(paste0(system.file(package = "PDE"),
   "/examples/tsvs/PDE_parameters_v1.4_all_files+-0.tsv"))
 }

\dontrun{
 ## requires user file choice:
 PDE_analyzer()
}

}
\seealso{
\code{\link{PDE_extr_data_from_pdfs}}
}
