% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nix_build.R
\name{nix_build}
\alias{nix_build}
\title{Invoke shell command \code{nix-build} from an R session}
\usage{
nix_build(
  project_path = getwd(),
  message_type = c("simple", "quiet", "verbose"),
  args = NULL
)
}
\arguments{
\item{project_path}{Path to the folder where the \code{default.nix} file resides.}

\item{message_type}{Character vector with messaging type. Either \code{"simple"}
(default), \code{"quiet"} for no messaging, or \code{"verbose"}.}

\item{args}{A character vector of additional arguments to be passed directly to
the \code{nix-build} command. If the project directory (i.e. \code{project_path}) is not
included in \code{args}, it will be appended automatically.}
}
\value{
Integer of the process ID (PID) of the \code{nix-build} shell command
launched, if the \code{nix_build()} call is assigned to an R object.
Otherwise, it will be returned invisibly.
}
\description{
Invoke shell command \code{nix-build} from an R session
}
\details{
This function is a wrapper for the \code{nix-build} command-line interface.
Users can supply any flags supported by \code{nix-build} via the \code{args} parameter.
If no custom arguments are provided, only the project directory is passed.
}
\examples{
\dontrun{
  # Run nix-build with default arguments (project directory)
  nix_build()

  # Run nix-build with custom arguments
  nix_build(args = c("--max-jobs", "2", "--quiet"))
}
}
