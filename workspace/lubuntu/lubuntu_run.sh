#!/bin/bash

#docker run -it --env="DISPLAY" --net=host --volume=$xauth_path":/root/.Xauthority" $1
docker run -it -e XDG_VTNR=9 --volume="/dev:/dev" $1 bash -c "/bin/bash"
