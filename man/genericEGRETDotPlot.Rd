\name{genericEGRETDotPlot}
\alias{genericEGRETDotPlot}
\title{Generic EGRET plotting function}
\usage{
  genericEGRETDotPlot(x, y, xlim, ylim, xTicks, yTicks,
    axes = FALSE, printTitle = TRUE, xaxs = "i", xlab = "",
    yaxs = "i", ylab = "", plotTitle = "", pch = 20,
    cex = 0.7, cex.main = 1.3, font.main = 2,
    cex.lab = 1.2, tcl = 0.5, tinyPlot = FALSE,
    hLine = FALSE, oneToOneLine = FALSE, ...)
}
\arguments{
  \item{x}{vector specifying the x data (required)}

  \item{y}{vector specifying the y data (required)}

  \item{xlim}{vector specifying the x plotting range
  (required)}

  \item{ylim}{vector specifying the y plotting range
  (required)}

  \item{xTicks}{vector specifying x axis tick placement}

  \item{yTicks}{vector specifying y axis tick placement}

  \item{axes}{logical defaults to FALSE to allow better
  control over axis, plotting parameter}

  \item{printTitle}{logical defaults to TRUE, plotting
  parameter to control whether to have title}

  \item{xaxs}{string defaults to "i", defines the style of
  x-axis interval calculation.  Possible values are i, r,
  e, s, d.}

  \item{xlab}{string defaults to "", defines the x label}

  \item{yaxs}{string defaults to "i", defines the style of
  y-axis interval calculation.  Possible values are i, r,
  e, s, d.}

  \item{ylab}{string defaults to "", defines the y label}

  \item{plotTitle}{string defaults to "", defines the plot
  title}

  \item{pch}{number defaults to 20, specifies plot symbol}

  \item{cex}{number defaults to 0.7, specifies plotting
  text magnification}

  \item{cex.main}{number defaults to 1.3, specifies title
  text magnification}

  \item{font.main}{number defaults to 2, specifies which
  font to use for text}

  \item{cex.lab}{number defaults to 1.2 specifies label
  text magnification}

  \item{tcl}{number defaults to 0.5, specifies length of
  tick marks as fraction of height of a line of text.}

  \item{tinyPlot}{logical defaults to FALSE, if TRUE,
  changes defaults to be appropriate for multi-plot}

  \item{hLine}{logical defaults to FALSE, inserts
  horizontal line at zero}

  \item{oneToOneLine}{logical defaults to FALSE, inserts
  1:1 line}

  \item{...}{additional graphical parameters can be
  adjusted}
}
\description{
  Basic plotting framework for EGRET dot plots. Graphical
  parameters default to values that work well with most
  plots, but all can be re-assigned. See ?par for complete
  definitions of most optional input variables.
}
\examples{
x <- exDaily$Date
y <- exDaily$Q
xlim <- c(min(x),max(x))
ylim <- c(min(y),1.05*max(y))
xlab <- "Date"
ylab <- "Flow"
xTicks <- pretty(xlim)
yTicks <- pretty(ylim)
genericEGRETDotPlot(x=x, y=y,
                    xlim=xlim, ylim=ylim,
                    xlab=xlab, ylab=ylab,
                    xTicks=xTicks, yTicks=yTicks,
                    plotTitle="Test"
)
}
\keyword{graphics}
\keyword{statistics}
\keyword{water-quality}
