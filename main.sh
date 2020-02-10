#! /bin/bash
virtualenv venv
source venv/bin/activate
pip install torch==1.4.0
pip install -r requirements.txt
#Generate graph data and store in /data/Weibograph
python ./Process/getWeibograph.py
#Generate graph data and store in /data/Twitter15graph
python ./Process/getTwittergraph.py Twitter15
#Generate graph data and store in /data/Twitter16graph
python ./Process/getTwittergraph.py Twitter16
#Reproduce the experimental results.
python ./model/Weibo/BiGCN_Weibo.py 100
#python ./model/Twitter/BiGCN_Twitter.py Twitter15 100
#python ./model/Twitter/BiGCN_Twitter.py Twitter16 100
deactivate