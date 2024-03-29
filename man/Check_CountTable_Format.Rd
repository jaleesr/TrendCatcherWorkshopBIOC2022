% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Check_CountTable_Format.R
\name{Check_CountTable_Format}
\alias{Check_CountTable_Format}
\title{Check the Input Count Table Format}
\usage{
Check_CountTable_Format(count.table.path, min.low.count = 1)
}
\arguments{
\item{count.table.path, }{string contain the absolute path of the CSV file count table,
with first column as GENE SYMBOL or GENE ENSEMBL and first row as SAMPLE NAME (with format composed by project name,time and
replicateID, such as "Lung_0_Rep1")}

\item{min.low.count, }{one numeric variable, the minimal count threshold for filtering low count within each time group.
By default it is 1.}
}
\value{
A list object, contains "raw.df", original count table ordered by time and replicate ID;
"count.table", filtered out low genes for further fitting; "removed.genes", low count genes.
}
\description{
This function takes the CSV file path of the count table provided by user. The input count table must
be a CSV file, includes integer count table, first column are the GENE SYMBOL or GENE ENSEMBL, and first row are SAMPLE NAME.
The count table is a rounded up after normalization and batch correction.
Please check TrendCatcher QC functions for normalization and batch correction details. The row names must be in the format of
"ProjectName_Time_Rep1" format. ProjectName is a string, can be single letter. Time is a integer. Rep is the replicate ID.
This function checked the count table format, and order the sample columns based on its time order.
It will return a right formatted count table to run TrendCatcher.
}
\examples{
example.file.path<-system.file("extdata", "Brain_DemoCountTable.csv", package = "TrendCatcher")
\dontrun{
count<-Check_CountTable_Format(example.file.path, min.low.count = 1)
}
}
