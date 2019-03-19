# Brett Waugh
# 11 March 2019
# week9.R
# Visual Multi Variances Analysis

# Required libraries.
require(ggplot2)

# Load data. 
esoph

# Create the graph. 
ggplot(esoph, aes(x=esoph$agegp, y=esoph$ncases, color=esoph$alcgp)) + geom_boxplot()