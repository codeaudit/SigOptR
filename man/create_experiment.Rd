% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sigopt_api_wrapper.R
\name{create_experiment}
\alias{create_experiment}
\title{Create an experiment}
\usage{
create_experiment(body)
}
\arguments{
\item{body}{POST body of create request}
}
\value{
experiment created by SigOpt
}
\description{
Create an experiment
}
\examples{
create_experiment(list(
  name="R test experiment",
  parameters=list(
    list(name="x1", type="double", bounds=list(min=0, max=100)),
    list(name="x2", type="double", bounds=list(min=0, max=100))
  )
))
}

