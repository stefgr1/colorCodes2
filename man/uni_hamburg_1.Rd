% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_pals.R
\docType{data}
\name{uni_hamburg_1}
\alias{uni_hamburg_1}
\title{Primary colors of the University of Hamburg}
\format{
An object of class \code{character} of length 4.
}
\source{
Color definitions are based on the 
\href{https://www.kus.uni-hamburg.de/themen/oeffentlichkeitsarbeit/corporate-design/corporate-manual.html}{CD manual}.
}
\usage{
uni_hamburg_1
}
\value{
A named vector of colors (HEX/HTML codes of type character).
}
\description{
\code{uni_hamburg_1} provides the four primary colors 
of the \href{https://www.uni-hamburg.de/}{University of Hamburg}, Germany.
}
\details{
The two main colors are \code{"rot"} (also defined as Pantone 485C or CMYK 0/100/100/0) 
and \code{"blau"} (also defined as CMYK 87/49/0/0). 
These colors should be weighted equally and in a subtle fashion 
(i.e., as color accents, not large areas or entire texts).

The auxiliary colors \code{"black"} and 
\code{"steingrau"} (also defined as Pantone 432U or CMYK 45/11/11/73) 
are used for text.

Colors shades may be used in diagrams or visualizations. 
See examples and the \code{\link{ac}} and \code{\link{usecol}} functions 
for creating color gradients.
}
\examples{
uni_hamburg_1
seecol(uni_hamburg_1, main = "Primary colors of the University of Hamburg")
demopal(uni_hamburg_1, type = 3, main = "Primary colors of the Uni Hamburg")

# Color gradients:
seecol(usecol(c(uni_hamburg_1[1], uni_hamburg_1[2]), n = 6), main = "HHU rot to blau")
seecol(usecol(c(uni_hamburg_1[1], "white", uni_hamburg_1[2]), n = 7), main = "Divergent HHU")

}
\seealso{
\code{\link{uni_hamburg_2}} for visualization colors of the University of Hamburg;  
\code{\link{seecol}} for viewing and comparing color palettes; 
\code{\link{usecol}} for using color palettes; 
\code{\link{simcol}} for finding similar colors; 
\code{\link{newpal}} for defining new color palettes; 
\code{\link{grepal}} for finding named colors.

Other contributed color palettes: 
\code{\link{caltech_pal_1}},
\code{\link{caltech_pal_2}},
\code{\link{caltech_pal_3}},
\code{\link{eth_pal_1}},
\code{\link{eth_pal_2}},
\code{\link{eth_pal_3}},
\code{\link{fu_pal_0}},
\code{\link{fu_pal_1}},
\code{\link{fu_pal_2}},
\code{\link{fu_pal_3}},
\code{\link{hu_pal_1}},
\code{\link{hu_pal_2}},
\code{\link{lmu_pal_1}},
\code{\link{lmu_pal_2}},
\code{\link{lmu_pal_3}},
\code{\link{mpg_pal}},
\code{\link{rpi_pal_1}},
\code{\link{rpi_pal_2}},
\code{\link{rpi_pal_3}},
\code{\link{rptu_pal}},
\code{\link{uni_bonn_1}},
\code{\link{uni_bonn_2}},
\code{\link{uni_freiburg_0}},
\code{\link{uni_freiburg_1}},
\code{\link{uni_freiburg_2}},
\code{\link{uni_freiburg_blue}},
\code{\link{uni_freiburg_br}},
\code{\link{uni_freiburg_grey}},
\code{\link{uni_freiburg_info}},
\code{\link{uni_goettingen_1}},
\code{\link{uni_goettingen_2}},
\code{\link{uni_goettingen_3}},
\code{\link{uni_hamburg_2}},
\code{\link{uni_jena_1}},
\code{\link{uni_jena_2}},
\code{\link{uni_kiel_1}},
\code{\link{uni_kiel_2}},
\code{\link{uni_koeln_1}},
\code{\link{uni_koeln_2}},
\code{\link{uni_konstanz_1}},
\code{\link{uni_konstanz_2}},
\code{\link{uni_mannheim_1}},
\code{\link{uni_mannheim_2}},
\code{\link{uni_princeton_0}},
\code{\link{uni_princeton_1}},
\code{\link{uni_princeton_2}},
\code{\link{uni_regensburg_1}},
\code{\link{uni_regensburg_2}},
\code{\link{uni_regensburg_3}},
\code{\link{uni_tuebingen_1}},
\code{\link{uni_tuebingen_2}},
\code{\link{uni_ulm_1}},
\code{\link{uni_ulm_2}}
}
\author{
\strong{unikn}, 2022-12-06.
}
\concept{contributed color palettes}
\keyword{datasets}
