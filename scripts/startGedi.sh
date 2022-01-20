homepath='/media/fedeoli/DATA/Federico/Roma/Lavoro/PhD/WinccOA/docker/docker_vogler_edit/wincc-docker'


docker run --rm -it \
-e DISPLAY=$DISPLAY \
--hostname winccoa-client \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $homepath/data/proj_client/test_01:/proj/default \
-v $homepath/data/proj_client/progs.ui:/proj/default/config/progs \
-v $homepath/data/proj_client/config.ui:/proj/default/config/config \
-v $homepath/data/stuff:/media/data \
$1 \
#WCCOAui -autoreg -m gedi -config /proj/default/config/config
#WCCOAui -autoreg -m gedi -config /proj/default/config/config

#-v /home/fedeoli/Documents/WinccOA/data/proj/DemoApplication-3.17/progs.ui:/proj/default/config/progs.ui \
#-v /home/fedeoli/Documents/WinccOA/data/proj/DemoApplication-3.17/config.ui:/proj/default/config/config.ui \



