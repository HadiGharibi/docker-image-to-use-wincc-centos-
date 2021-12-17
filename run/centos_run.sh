#/bin/bash!

# $1=shared folder
# $2=image name

# rm previous container
rm runner.log
docker container stop wincc >> runner.log
docker container rm wincc >> runner.log

# get xautority file
rm xauth.log
systemctl --user show-environment | grep XAUTHORITY >> xauth.log

# set variable
FILE="./xauth.log"

# check by showing output
IFS='='
while IFS= read -r line
do
  read -ra ADDR <<< $line   # str is read into an array as tokens separated by IFS
  if [ "${ADDR[0]}" = "XAUTHORITY" ]; then
  	xauth_path="${ADDR[1]}"
  fi
  
  # get Download
done < "$FILE"

echo $xauth_path >> runner.log

# create container and start init
#docker run -it -p 80:80 -e "container=docker" --privileged=true -d --security-opt seccomp:unconfined --cap-add=SYS_ADMIN -v /sys/fs/cgroup:/sys/fs/cgroup:ro --env="DISPLAY" --net=host --volume=$xauth_path":/root/.Xauthority" --volume=$1":/media/shared_data" --name wincc $2 bash -c "/usr/sbin/init"

docker run 	-it \
		-p 80:80 \
		--env="DISPLAY" --net=host \
		--volume=$xauth_path":/root/.Xauthority" \
		--volume=$1":/media/shared_data" \
		--name wincc $2 bash -c "/bin/bash"




