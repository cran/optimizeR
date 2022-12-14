% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/optimizer.R
\name{set_optimizer}
\alias{set_optimizer}
\title{Specify numerical optimizer}
\format{
The format of an \code{optimizer} object is documented in
\code{\link{new_optimizer}}.
}
\usage{
set_optimizer(
  opt_fun,
  f,
  p,
  v,
  z,
  ...,
  out_ign = character(),
  test_par = list(validate = TRUE, f_test = f_ackley, npar = 2, add = list(), init_rest =
    list(lower = -1, upper = 1), init_digits = 2, opt_checks = 10, opt_checks_time = 1)
)
}
\arguments{
\item{opt_fun}{An object of class \code{function}, a numerical optimizer.
\itemize{
\item It must have an input \code{f} for a \code{function}, which is optimized
over its first argument.
\item It must have an input \code{p} for a \code{numerical} vector, the initial
parameter values.
\item It must have a \code{...} argument for additional parameters to \code{f}.
\item The output must be a named \code{list}, including the optimal function value
(named as \code{v}) and parameter vector (named as \code{z}).
}}

\item{f}{A \code{character}, the name of the function input of \code{opt_fun}.}

\item{p}{A \code{character}, the name of the starting parameter values input of \code{opt_fun}.}

\item{v}{A \code{character}, the name of the optimal function value in the output list of \code{opt_fun}.}

\item{z}{A \code{character}, the name of the optimal parameter vector in the output list of \code{opt_fun}.}

\item{...}{Additional arguments to be passed to the optimizer. Without
specifications, the default values of the optimizer are used.}

\item{out_ign}{A \code{character} vector of element names in the output of \code{opt_fun} that are not
saved. The elements \code{v} and \code{z} are added automatically to
\code{opt_ign}, because they are saved separately, see the output
documentation of \code{\link{apply_optimizer}}.}

\item{test_par}{A \code{list} of test parameters for an \code{optimizer} object:
\itemize{
\item \code{validate}, a \code{logical}, set to \code{TRUE} (\code{FALSE}) to (not)
validate the \code{optimizer} object.
By default, \code{validate = TRUE}.
\item \code{f_test}, a test \code{function} to be optimized.
By default, \code{f_test = \link{f_ackley}}.
\item \code{npar}, the length of the first argument of \code{f_test}, i.e. the
argument over which \code{f_test} is optimized.
\item \code{add}, a \code{list} of additional arguments to \code{f_test}.
\item \code{init_rest}, a \code{list} of two elements, \code{lower} and \code{upper},
with lower and upper limits, respectively, for test initial values for the
optimization of \code{f_test} with \code{opt_fun}.
Can be single values (for joint limits) or \code{numeric} vectors of length
\code{npar} (for individual limits).
By default, \code{lower = -1} and \code{upper = 1}.
\item \code{init_digits}, the number of decimal places for the test initial
values.
By default, \code{init_digits = 2}.
\item \code{opt_checks}, the number of checks for \code{opt_fun} with random initial
values (that fulfill the \code{init_rest} restrictions).
By default, \code{opt_checks = 10}.
\item \code{opt_check_time}, the maximum number of seconds for a single check for
\code{opt_fun}.
A check is considered to be successful, if no error occurred
within \code{opt_check_time} seconds.
}}
}
\value{
An object of class \code{optimizer}.
}
\description{
Use this function to specify the consistent framework for a numerical
optimizer.
}
\examples{
set_optimizer(
  opt_fun = pracma::nelder_mead,
  f = "fn",
  p = "x0",
  v = "fmin",
  z = "xmin",
  tol = 1e-6
)

}
\seealso{
\code{\link[=optimizer_nlm]{optimizer_nlm()}} and \code{\link[=optimizer_optim]{optimizer_optim()}}, two wrappers for the
\code{\link[stats]{nlm}} and \code{\link[stats]{optim}} optimizer.
}
\keyword{specification}
