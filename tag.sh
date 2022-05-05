now=$(date +%Y%m%d-%H%M%S)
trigger_file=trigger.${now}.txt
tag_sh_file=tag.${now}.sh

curl -s https://github.jiyuhang.workers.dev/https://raw.githubusercontent.com/Ji-Yuhang/docker-pull-proxy/main/trigger.txt -o $trigger_file
echo $trigger_file

cat $trigger_file |awk '{print "docker pull "$2} '
cat $trigger_file |awk '{print "docker tag "$2 " " $1} '

cat $trigger_file |awk '{print "docker pull "$2} ' > $tag_sh_file
cat $trigger_file |awk '{print "docker tag "$2 " " $1} ' >> $tag_sh_file

sh $tag_sh_file