## plot_box_calls.R | unikn
## spds | uni.kn |  2022 11 29
## ---------------------------

## Specialized functions to plot rectangular boxes (e.g., frames, slides, etc.)

## (B): Basic functions that call plot_box (with fewer options, but sensible defaults): -------- 

# 1. xbox(): Plot a colored box with "x" (as a simple version of plot_box): ------ 

# - Documentation: ---- 

#' Plot a box (with x) 
#' 
#' \code{xbox} plots a box with a cross (x) in its top-right corner. 
#' 
#' The cross (x) appears rectangular when viewing the plot 
#' at the correct aspect ratio (as defined by \code{dim}). 
#' 
#' @param col The color to fill the box with (i.e., its background color).  
#' Default: \code{col = Seeblau}. 
#' 
#' @param dim The x- and y-dimensions of the box (as numeric). 
#' Default: \code{dim = c(1, 1)} (i.e., a unit square).
#' 
#' @param use_x Plot a cross in upper right corner (as logical)? 
#' Default: \code{use_x = TRUE}. 
#' 
#' @family plot functions
#' 
#' @seealso
#' \code{\link{post}} to add text to an xbox;   
#' \code{\link{slide}} to plot a new slide (or frame).  
#' 
#' @examples
#' xbox()  # default box
#' 
#' # Options:
#' xbox(col = Bordeaux)
#' xbox(dim = c(2, 1)) # 2:1 dimension (wider than high)
#'
#' @import graphics 
#'                          
#' @export 

# - Definition: ---- 

xbox <- function(col = Seeblau,  # default box bg/fill color: Seeblau ("#59C7EB")
                 dim = c(1, 1),  # default dimensions: dim = c(1, 1) (i.e., unit square).
                 use_x = TRUE    # plot "X" in upper right corner? (default: use_x = TRUE)
                 # ...  # etc. 
) {

  # Verify inputs: ------ 
  
  # col: 
  if (is_col(col) == FALSE){
    message("col must be a color. Using Seeblau...")
    col <- Seeblau
  }

  # dim:
  if (length(dim) == 1){  # only 1 value provided: 
    dim <- c(dim[1], dim[1])  # use as square
  }
    
  # use_x:
  if (is.null(use_x) || is.na(use_x) || is.logical(use_x) == FALSE){
    message("use_x must be TRUE or FALSE. Using TRUE...")
    use_x <- TRUE  # default
  }
    
  
  # Main: ------ 
  
  # Call expert function (with sensible defaults):
  plot_box(col = col,
           box_dim = c(0, 0, dim[1], dim[2]),
           mar_all = 0,
           oma_all = 0,
           cross = use_x
           # ...  # etc.
  )
  
} # xbox().

## Check:
# xbox()  # default xbox

## Simple variants:
# xbox(col = Seegruen)
# xbox(col = Bordeaux)

## xbox dimensions:
# xbox(dim = c(2, 1))  # 2:1 dimension (wider than high)
# xbox(dim = c(1, 2))  # 1:2 dimension (higher than wide)


# 2. slide(): Plot a colored slide/frame without "x" (i.e., a simpler version of plot_box): ------ 

# - Documentation: ---- 

#' Plot a slide (or frame) 
#' 
#' \code{slide} plots an empty slide (or frame) 
#' as a colored rectangle.   
#' 
#' @param col The color to fill the slide with (i.e., its background color).  
#' Default: \code{col = NA} (i.e., system default for transparency). 
#' 
#' @param dim The x- and y-dimensions of the slide. 
#' Default: \code{dim = c(4/3, 1)} (i.e., unit height, 4/3 wider than high). 
#' 
#' @param border The color of the slide's border. 
#' Setting \code{border = NA} hides border.  
#' Default: \code{border = grey(.33, 1)}. 
#' 
#' @param lwd The line width of the slide's border. 
#' Setting \code{lwd = 0} or \code{lwd = NA} removes border. 
#' Default: \code{lwd = 1.5}.
#' 
#' @family plot functions
#' 
#' @seealso
#' \code{\link{heading}}, \code{\link{line}}, or \code{\link{mark}} to add text to a slide;  
#' \code{\link{xbox}} to plot a box.
#' 
#' 
#' @examples
#' slide()  # default slide (or frame)
#' slide(lwd = NA)  # borderless slide
#' 
#' # Dimensions: 
#' slide(dim = c(18, 9))   # larger and 2:1 dimensions
#' slide(dim = c(1/3, 1))  # smaller and 1:3 dimensions
#' 
#' # Formatting:
#' slide(col = pal_seeblau[[1]], border = pal_seeblau[[5]], lwd = 2)
#'
#' @import graphics 
#'                          
#' @export 

# - Definition: ---- 

slide <- function(col = NA,         # default box bg/fill color: none/white/transparent (by system)
                  dim = c(4/3, 1),  # default dimension: dim = c(4/3, 1) (i.e., unit height, width = 4/3 x height).
                  border = grey(.33, 1),
                  lwd = 1.5){
  
  # Dimensions:
  if (length(dim) == 1){  # only 1 value provided: 
    dim <- c(dim[1], dim[1])  # use as square
  }
  
  # Call expert function (with sensible defaults):
  plot_box(col = col,
           box_dim = c(0, 0, dim[1], dim[2]),
           border = border,
           lty = 1,
           lwd = lwd,
           cross = FALSE,
           mar_all = 0,
           oma_all = 0
           # ...  # etc.
  )
  
} # slide().

## Check:
# slide()  # default slide

## Simple variants:
# slide(col = Seeblau, lwd = 0)  
# slide(dim = c(18:9))  # larger and 2:1 wider than high


# Test: Testbed for code above: ------ 

# # Aspect ratio of current plot:
# plot_xy <- par("pin")                # use par("pin") OR dev.size("in")
# plot_ratio <- plot_xy[1]/plot_xy[2]  # current aspect ratio
# scale_x <- 1/plot_ratio              # multiplicative correction factor (for x-widths)
# scale_x


# Text sources: ------ 

# Defining CD elements according to specifications publicly provided at https://www.uni-konstanz.de. 
# Sources for text specifications: 
# https://www.uni-konstanz.de/en/university/news-and-media/create-online-and-print-media/corporate-design/the-university-of-konstanzs-corporate-design/ 


## Done: ------

# - Clean up code.  [2019-06-04]


## ToDo: ------

# - Consider adding ... argument to simple functions (to provide expert users with additional options).

## eof. ----------