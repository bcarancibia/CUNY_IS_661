setwd("/users/bcarancibia/CUNY_IS_661/data")

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


chad <- read.csv("chad_amp.csv")
civ <- read.csv("civ_amp.csv")
haiti <- read.csv("haiti_amp.csv")
kosovo <- read.csv("kosovo_amp.csv")
madagascar <- read.csv("mada_amp.csv")
malawi <- read.csv("malawi.csv") 
moldova <- read.csv("moldova.csv")
timor <- read.csv("timor.csv")
uganda <- read.csv("uganda_amp.csv")
honduras <- read.csv("honduras.csv")

length (chad)
length(civ)
length(haiti)
length(kosovo)
length(madagascar)
length(malawi)
length(moldova)
length(timor)
length(uganda)
length(honduras)

length(which(chad==" "|chad==""))/(269*82)
length(which(civ==" "|civ==""))/(408*88)
length(which(haiti==" "|haiti==""))/(2211*41)
length(which(honduras==" "|honduras==""))/(1033*111)
length(which(kosovo==" "|kosovo==""))/(2185*14)
length(which(madagascar==" "|madagascar==""))/(1142*42)
length(which(malawi==" "|malawi==""))/(773*35)
length(which(moldova==" "|moldova==""))/(377*17)
length(which(timor==" "|timor==""))/(956*82)
length(which(uganda==" "|uganda==""))/(1123*131)

sum(chad$Actual.Disbursements)
sum(civ$Actual.Disbursements)
sum(kosovo$Total.Actual.Disbursements)
sum(madagascar$Total.Disbursements)
sum(malawi$Total.Actual.Disbursements)
sum(timor$Total.Actual.Disbursements)
sum(moldova$Total.Actual.Commitments)


#group by donor 
#chad
by_donor_chad <- group_by(chad, Donor.Agency)
summary_donor_chad <- summarise(by_donor_chad, count_each_donor = n(),
                                                total_by_donor = sum(Actual.Disbursements))

#civ
by_donor_civ <- group_by(civ, Donor.Agency)
summary_donor_civ <- summarise(by_donor_civ, count_each_donor = n(),
                                total_by_donor = sum(Actual.Disbursements))

#kosovo
by_donor_kosovo <- group_by(kosovo, Donor.Agency)
summary_donor_kosovo <- summarise(by_donor_kosovo, count_each_donor = n(),
                               total_by_donor = sum(Total.Actual.Disbursements))

#madagascar
by_donor_madagascar <- group_by(madagascar, AGENCE)
summary_donor_madagascar <- summarise(by_donor_madagascar, count_each_donor = n(),
                                  total_by_donor = sum(Total.Disbursements))

#malawi
by_donor_malawi <- group_by(malawi, Donor.Agency)
summary_donor_malawi <- summarise(by_donor_malawi, count_each_donor = n(),
                                      total_by_donor = sum(Total.Actual.Disbursements))

#timor
by_donor_timor <- group_by(timor, Donor.Agency)
summary_donor_timor <- summarise(by_donor_timor, count_each_donor = n(),
                                  total_by_donor = sum(Total.Actual.Disbursements))

#moldova
by_donor_moldova <- group_by(moldova, Donor)
summary_donor_moldova <- summarise(by_donor_moldova, count_each_donor = n(),
                                 total_by_donor = sum(Total.Actual.Commitments))





