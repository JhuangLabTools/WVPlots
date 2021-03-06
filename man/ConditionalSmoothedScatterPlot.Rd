% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ConditionalSmoothedScatterPlot.R
\name{ConditionalSmoothedScatterPlot}
\alias{ConditionalSmoothedScatterPlot}
\title{Plot a scatter plot with smoothing line.}
\usage{
ConditionalSmoothedScatterPlot(
  frame,
  xvar,
  yvar,
  groupvar,
  title,
  ...,
  k = 3,
  align = "center",
  point_color = "black",
  smooth_color = "black",
  palette = "Dark2"
)
}
\arguments{
\item{frame}{data frame to get values from}

\item{xvar}{name of the independent column in frame. Assumed to be regularly spaced}

\item{yvar}{name of the dependent (output or result to be modeled) column in frame}

\item{groupvar}{name of the grouping column in frame. Can be NULL for an unconditional plot}

\item{title}{title for plot}

\item{...}{no unnamed argument, added to force named binding of later arguments.}

\item{k}{width of smoothing window. Must be odd for a center-aligned plot. Defaults to 3}

\item{align}{smoothing window alignment: 'center', 'left', or 'right'. Defaults to 'center'}

\item{point_color}{color of points, when groupvar is NULL}

\item{smooth_color}{color of smoothing line, when groupvar is NULL}

\item{palette}{name of Brewer palette, when groupvar is non-NULL (can be NULL)}
}
\description{
Plot a scatter plot with a smoothing line; the smoothing window is aligned either left, center or right.
}
\details{
\code{xvar} is the continuous independent variable and \code{yvar} is the dependent binary variable.
Smoothing is by a square window of width \code{k}.

If \code{palette} is NULL, and \code{groupvar} is non-NULL, plot colors will be chosen from the default ggplot2 palette.
Setting \code{palette} to NULL
allows the user to choose a non-Brewer palette, for example with \code{\link[ggplot2]{scale_fill_manual}}.
}
\examples{

y = c(1,2,3,4,5,10,15,18,20,25)
x = seq_len(length(y))
df = data.frame(x=x, y=y, group=x>5)
WVPlots::ConditionalSmoothedScatterPlot(df, "x", "y", NULL,
   title="left smooth, one groups", align="left")
WVPlots::ConditionalSmoothedScatterPlot(df, "x", "y", "group",
   title="left smooth, two groups", align="left")

}
