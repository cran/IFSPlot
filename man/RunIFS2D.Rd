% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Plot.R
\name{RunIFS2D}
\alias{RunIFS2D}
\title{RunIFS2D}
\usage{
RunIFS2D(transformation, translation, probability, iterations, pixels,
  set_palette = 0, filename = "")
}
\arguments{
\item{transformation}{A list of size n, the 2 x 2 transformation matrices.}

\item{translation}{A list of size n, the 2 x 1 translational vectors.}

\item{probability}{A list of size n, the weighted probabilities.}

\item{iterations}{The number of iterations/points.}

\item{pixels}{The number of pixels for the 2D plot.}

\item{set_palette}{0 = default palette; 1 = grayscale; 2 = rich.colors.}

\item{filename}{If given, saves the image as a png file in the current working directory.}
}
\value{
A list with a 2D array of pixels and the parameters as a JSON.
}
\description{
This function allows you to plot some fractals using the Iterated Function Systems theory.
}
\examples{
library(IFSPlot)

m1 = matrix(data = c(+0.00, +0.00, +0.00, +0.16), nrow = 2, ncol = 2)
m2 = matrix(data = c(+0.85, -0.04, +0.04, +0.85), nrow = 2, ncol = 2)
m3 = matrix(data = c(+0.20, +0.23, -0.26, +0.22), nrow = 2, ncol = 2)
m4 = matrix(data = c(-0.15, +0.26, +0.28, +0.24), nrow = 2, ncol = 2)

v1 = c(0.00, 0.00)
v2 = c(0.00, 1.60)
v3 = c(0.00, 1.60)
v4 = c(0.00, 0.44)

probability = c(1, 85, 7, 7)

transformations = list(m1, m2, m3, m4)
translations    = list(v1, v2, v3, v4)

iterations = 10**4

result = RunIFS2D(transformations, translations, probability, iterations, 600*1200)
}
