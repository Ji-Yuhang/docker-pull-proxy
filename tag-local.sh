# docker pull from private registry
cat trigger.txt |awk '{print "docker pull "$2} '
cat trigger.txt |awk '{print "docker pull "$2} ' | sh

# docker tag
cat trigger.txt |awk '{print "docker tag "$2 " " $1} '
cat trigger.txt |awk '{print "docker tag "$2 " " $1} ' | sh
