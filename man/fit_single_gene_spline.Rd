% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Utility.R
\name{fit_single_gene_spline}
\alias{fit_single_gene_spline}
\title{Fit the non-baseline count data into a smoothed ANOVA model.}
\usage{
fit_single_gene_spline(data.trans)
}
\arguments{
\item{data.trans, }{a data frame returned from transform_single_gene_df, without the baseline time.}
}
\value{
a dataframe with all the fitted count from spline model.
}
\description{
Fit the non-baseline count data into a smoothed ANOVA model.
}
