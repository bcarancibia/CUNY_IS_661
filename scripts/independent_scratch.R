require(dplyr) #data manipulation
require(ggplot2) #plot the data
require(scales)
require(grid)
require(RColorBrewer)

fte_theme <- function() {
  
  # Generate the colors for the chart procedurally with RColorBrewer
  palette <- brewer.pal("Greys", n=9)
  color.background = palette[2]
  color.grid.major = palette[3]
  color.axis.text = palette[6]
  color.axis.title = palette[7]
  color.title = palette[9]
  
  # Begin construction of chart
  theme_bw(base_size=9) +
    
    # Set the entire chart region to a light gray color
    theme(panel.background=element_rect(fill=color.background, color=color.background)) +
    theme(plot.background=element_rect(fill=color.background, color=color.background)) +
    theme(panel.border=element_rect(color=color.background)) +
    
    # Format the grid
    theme(panel.grid.major=element_line(color=color.grid.major,size=.25)) +
    theme(panel.grid.minor=element_blank()) +
    theme(axis.ticks=element_blank()) +
    
    # Format the legend, but hide by default
    theme(legend.position="none") +
    theme(legend.background = element_rect(fill=color.background)) +
    theme(legend.text = element_text(size=7,color=color.axis.title)) +
    
    # Set title and axis labels, and format these and tick marks
    theme(plot.title=element_text(color=color.title, size=10, vjust=1.25)) +
    theme(axis.text.x=element_text(size=7,color=color.axis.text)) +
    theme(axis.text.y=element_text(size=7,color=color.axis.text)) +
    theme(axis.title.x=element_text(size=8,color=color.axis.title, vjust=0)) +
    theme(axis.title.y=element_text(size=8,color=color.axis.title, vjust=1.25)) +
    
    # Plot margins
    theme(plot.margin = unit(c(0.35, 0.2, 0.3, 0.35), "cm"))
}


chad <- read.csv("/users/bcarancibia/CUNY_IS_661/data/chad_amp.csv")
civ <- read.csv("/users/bcarancibia/CUNY_IS_661/data/civ_amp.csv")
haiti <- read.csv("/users/bcarancibia/CUNY_IS_661/data/haiti_amp.csv")
honduras <- read.csv("/users/bcarancibia/CUNY_IS_661/data/honduras.csv")
kosovo <- read.csv("/users/bcarancibia/CUNY_IS_661/data/kosovo_amp.csv")
madagascar <- read.csv("/users/bcarancibia/CUNY_IS_661/data/mada_amp.csv")
malawi <- read.csv("/users/bcarancibia/CUNY_IS_661/data/malawi.csv")
moldova <- read.csv("/users/bcarancibia/CUNY_IS_661/data/moldova.csv")
nepal <- read.csv("/users/bcarancibia/CUNY_IS_661/data/nepal.csv")
timor <- read.csv("/users/bcarancibia/CUNY_IS_661/data/timor.csv")
uganda <- read.csv("/users/bcarancibia/CUNY_IS_661/data/uganda_amp.csv")