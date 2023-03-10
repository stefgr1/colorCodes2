% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_pals.R
\docType{data}
\name{uni_kiel_1}
\alias{uni_kiel_1}
\title{Primary color of Kiel University}
\format{
An object of class \code{character} of length 3.
}
\source{
Color definitions are based on 
\url{https://www.presse.uni-kiel.de/de/erscheinungsbild/farben}.
}
\usage{
uni_kiel_1
}
\value{
A named vector of colors (HEX/HTML codes of type character).
}
\description{
\code{uni_kiel_1} provides the primary \code{violett} color
of \href{https://www.uni-kiel.de/en/}{Kiel University}, Germany.
}
\details{
The main color is the luminant \code{violett} of \code{uni_kiel_1[2]}, 
which alludes to the historic founding faculty of theology. 
It is alternatively defined as \code{RGB 155/10/125}, \code{Hex #9b0a7d}, 
\code{HKS 33}, or \code{CMYK 45/100/0/0}. 

The palette \code{uni_kiel_1} enframes this color as its central element 
in \code{"black"} and \code{"white"} to easily enable mixing it with 
shades of \code{"grey"}. 
See examples and the \code{\link{ac}} and \code{\link{usecol}} functions 
for creating color gradients. 

The full name of \href{https://www.uni-kiel.de/en/}{Kiel University} 
is Christian-Albrechts-Universität (CAU) zu Kiel.
}
\examples{
uni_kiel_1
seecol(uni_kiel_1, main = "The main color of Kiel University (CAU)")
demopal(uni_kiel_1, type = 3, main = "Primary colors of the University of Kiel")

# Gradient: Mixing the main color with shades of grey: 
N = 9
kiel_mix <- usecol(uni_kiel_1, n = N)[c(-1, -N)]  # remove extremes
seecol(kiel_mix, main = "A color gradient of Kiel University (CAU)")

}
\seealso{
\code{\link{uni_kiel_2}} for departmental colors of Kiel University;  
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
\code{\link{uni_hamburg_1}},
\code{\link{uni_hamburg_2}},
\code{\link{uni_jena_1}},
\code{\link{uni_jena_2}},
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
\strong{unikn}, 2023-01-02.
}
\concept{contributed color palettes}
\keyword{datasets}
