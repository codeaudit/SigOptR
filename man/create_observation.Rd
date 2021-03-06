% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sigopt_api_wrapper.R
\name{create_observation}
\alias{create_observation}
\title{Create an observation for an experiment}
\usage{
create_observation(experiment_id, body)
}
\arguments{
\item{experiment_id}{the id of an experiment to create an observation for}

\item{body}{POST body of create request}
}
\value{
observation created by SigOpt
}
\description{
Create an observation for an experiment
}
\examples{
experiment <- create_experiment(list(
  name="R test experiment",
  parameters=list(
    list(name="x1", type="double", bounds=list(min=0, max=100)),
    list(name="x2", type="double", bounds=list(min=0, max=100))
  )
))
suggestion <- create_suggestion(experiment$id)
create_observation(experiment$id, list(suggestion=suggestion$id, value=99.08))
create_observation(experiment$id, list(suggestion=suggestion$id, value=99.58, value_stddev=0.1))
}

