# docker pull
cat trigger.txt |awk '{print "docker pull "$1} '
cat trigger.txt |awk '{print "docker pull "$1} '| sh

# docker tag
cat trigger.txt |awk '{print "docker tag "$1 " " $2} '
cat trigger.txt |awk '{print "docker tag "$1 " " $2} '| sh

# docker push
cat trigger.txt |awk '{print "docker push " $2} '
cat trigger.txt |awk '{print "docker push " $2} '| sh