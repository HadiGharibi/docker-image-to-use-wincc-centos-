docker run -d \
  --name winccoa \
  --hostname winccoa \
  -v /home/fedeoli/Documents/WinccOA/data/shield.txt:/opt/WinCC_OA/3.17/shield.txt \
  -v /home/fedeoli/Documents/WinccOA/data/proj/DemoApplication_3.17:/proj/default \
  -p 5678:5678 \
  $1
