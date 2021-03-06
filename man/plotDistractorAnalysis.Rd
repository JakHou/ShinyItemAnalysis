% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotDistractorAnalysis.R
\name{plotDistractorAnalysis}
\alias{plotDistractorAnalysis}
\title{Function for graphical representation of item distractor analysis}
\usage{
plotDistractorAnalysis(data, key, num.groups = 3, item = 1, item.name,
multiple.answers = TRUE, matching = NULL)
}
\arguments{
\item{data}{character: data matrix or data frame. See \strong{Details}.}

\item{key}{character: answer key for the items.}

\item{num.groups}{numeric: number of groups to that should be respondents splitted.}

\item{item}{numeric: the number of item to be plotted.}

\item{item.name}{character: the name of item.}

\item{multiple.answers}{logical: should be all combinations plotted (default) or should be
answers splitted into distractors. See \strong{Details}.}

\item{matching}{numeric: numeric vector. If not provided, total score is calculated and
distractor analysis is performed based on it.}
}
\description{
Plots graphical representation of item distractor analysis with proportions and
optional number of groups.
}
\details{
This function is graphical representation of \code{\link{DistractorAnalysis}} function.
The scores are calculatede using the item data and key. The respondents are then splitted into
the \code{num.groups}-quantiles and the proportion of respondents in each quantile is
reported with respect to their answers, using all reported combinations (default) or distractors.
These proportions are plotted.

The \code{data} is a matrix or data frame whose rows represents unscored item response from a
multiple-choice test and columns correspond to the items.

The \code{key} must be a vector of the same length as \code{ncol(data)}.

If \code{multiple.answers = TRUE} (default) all reported combinations of answers are plotted.
If \code{multiple.answers = FALSE} all combinations are splitted into distractors and only these
are then plotted with correct combination.
}
\examples{
\dontrun{
# loading 100-item medical admission test data
data(dataMedicaltest, dataMedicalkey)
dataBin <- dataMedical[, 1:100]
data <- dataMedicaltest[, 1:100]
key <- unlist(dataMedicalkey)

# Difficulty/Discriminaton plot for medical admission test
DDplot(dataBin)
# item 48 is very hard, thus does not discriminate well
# item 57 discriminates well
# item 32 does not discriminate well

plotDistractorAnalysis(data, key, item = 48, multiple.answers = F)
# correct answer B does not function well
plotDistractorAnalysis(data, key, item = 57, multiple.answers = F)
# all options function well, thus the whole item discriminates well
plotDistractorAnalysis(data, key, item = 32, multiple.answers = F)
# functions well, thus the whole item discriminates well

# distractor analysis plot for item 48, 57 and 32, all combinations
plotDistractorAnalysis(data, key, item = 48)
plotDistractorAnalysis(data, key, item = 57)
plotDistractorAnalysis(data, key, item = 32)

# distractor analysis plot for item 57, all combinations and 6 groups
plotDistractorAnalysis(data, key, num.group = 6, item = 57)
}


}
\author{
Adela Drabinova \cr
Institute of Computer Science, The Czech Academy of Sciences \cr
Faculty of Mathematics and Physics, Charles University \cr
drabinova@cs.cas.cz \cr

Patricia Martinkova \cr
Institute of Computer Science, The Czech Academy of Sciences \cr
martinkova@cs.cas.cz \cr

#' @seealso \code{\link{DistractorAnalysis}}
#' @seealso \code{\link[CTT]{distractor.analysis}}
}
