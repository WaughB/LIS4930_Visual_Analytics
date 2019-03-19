import plotly.plotly as py
from plotly.graph_objs import *
py.sign_in('WaughB', 'B7hoIkoKNFO7xCxoVGT1')
trace1 = {
  "y": [0.1762677, 0.189679, 0.2196229, 0.2581761, 0.3255756, 0.3983259, 0.4699786, 0.5387844, 0.6070757, 0.6739264, 0.7389249, 0.8032374, 0.8660064, 0.9114196, 0.9437645, 0.9714103, 0.9888347, 0.9953517, 1.0011484, 1.0050586], 
  "x": [0, 0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2, 3.4, 3.6, 3.8], 
  "type": "scatter", 
  "uid": "58ee7e79-f3e2-4919-9832-3b0641e19d5b", 
  "xsrc": "WaughB:1:59825b", 
  "ysrc": "WaughB:1:fc0d11"
}
data = Data([trace1])
fig = Figure(data=data)
plot_url = py.plot(fig)
