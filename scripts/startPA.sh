homepath='/media/fedeoli/DATA/Federico/Roma/Lavoro/PhD/WinccOA/docker/docker_vogler_edit/wincc-docker'

docker run -ti --rm \
-e DISPLAY=$DISPLAY \
--hostname winccoa-client \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $homepath/data/proj_client:/proj \
$1 \
WCCOAui -projAdmin
