
cat trigger.txt |awk '{print "docker pull "$2} '
cat trigger.txt |awk '{print "docker tag "$2 " " $1} '


cat trigger.txt |awk '{print "ansible all -m command -a \"docker pull " $2 "\"" } '
cat trigger.txt |awk '{print "ansible all -m command -a \"docker tag " $2 $1 "\"" } '


# ansible all -m script -a "tag.sh"

