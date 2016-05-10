source("http://bioconductor.org/biocLite.R") #adds bioconductor site as a package source
BiocLite("pheatmap") #downloads and install pheatmap package from bioconductor
library(pheatmap) #loads pheatmap package

install.packages("RColorBrewer") #donwnloads and installs a package with useful color themes 
Library(RColorBrewer) #load RcolorBrewer package

#LOAD DATA
data=read.delim("KO-WT-OV-3way.sig.batch.exprs.xls") #read in expression values for significantly correlated probesets
data=data[,1:6] #subsets data remove the gene symbols, names or EntrezIDs

# GENERATE HEATMAP
pheatmap(data, #expression values for the heatmap
main="title of plot", # whatever you want this plot to be names
color=rev(brewer.pal(10, "RdBu")), # uses colorbrewer package to generate 10 values along a red->blue scale (try http://casoilresource.lawr.ucdavis.edu/drupal/node/192 to see the names of more color themes, or just google image search for "RColorBrewer"))
cluster_cols=F, # don’t cluster columns
fontsize_row=10 # font size of the row labels
filename="./results/KO-WT-OV-3way.sig.batch.heatmap.pdf") # name of file output
