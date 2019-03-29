# Brett Waugh
# 28 March 2019
# week13.R
# Social Network Visualization

# Required libraries.
require(GGally)
require(network) 
require(sna) 
require(ggplot2)

# First visualization.
net = rgraph(10, mode = "graph", tprob = 0.50) 
net = network(net, directed = FALSE)
network.vertex.names(net) = letters[1:10]
ggnet2(net, node.size = 8, node.color = "black", edge.size = 3, edge.color = "grey")

# Second visualization. 
net = rgraph(25, mode = "graph", tprob = 0.75) 
net = network(net, directed = FALSE)
network.vertex.names(net) = letters[1:25]
ggnet2(net, node.size = 8, node.color = "black", edge.size = 1, edge.color = "grey")

# Third visualization. 
net = rgraph(10, mode = "graph", tprob = 1) 
net = network(net, directed = FALSE)
network.vertex.names(net) = letters[1:10]
ggnet2(net, node.size = 8, node.color = "black", edge.size = 3, edge.color = "grey")