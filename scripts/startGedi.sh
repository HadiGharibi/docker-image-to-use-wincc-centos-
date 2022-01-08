
docker run --rm -it \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v /home/fedeoli/Documents/WinccOA/data/proj/DemoApplication-3.17:/proj/default \
$1 \
WCCOAui -autoreg -m gedi -config /proj/default/config/config

#-v /home/fedeoli/Documents/WinccOA/data/proj/DemoApplication-3.17/progs.ui:/proj/default/config/progs.ui \
#-v /home/fedeoli/Documents/WinccOA/data/proj/DemoApplication-3.17/config.ui:/proj/default/config/config.ui \


