homepath='/media/fedeoli/DATA/Federico/Roma/Lavoro/PhD/WinccOA/docker/docker_vogler_edit/wincc-docker'

docker run -d --rm \
  --name winccoa \
  --hostname winccoa-server \
  -v $homepath/data/shield.txt:/opt/WinCC_OA/3.17/shield.txt \
  -v $homepath/data/proj_client/test_01:/proj/start \
  -p 5678:5678 \
  $1 \
 WCCILpmon -autoreg -config /proj/default/config/config
