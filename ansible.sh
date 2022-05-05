# cat trigger.txt |awk '{print "docker pull "$2} '
# cat trigger.txt |awk '{print "docker tag "$2 " " $1} '


# cat trigger.txt |awk '{print "ansible all -m command -a \"docker pull " $2 "\"" } '
# cat trigger.txt |awk '{print "ansible all -m command -a \"docker tag " $2 $1 "\"" } '


# ansible all -m script -a "tag.sh"
# file=$(date +%Y%m%d-%H%M%S)

now=$(date +%Y%m%d-%H%M%S)
trigger_file=trigger.${now}.txt
tag_sh_file=tag.${now}.sh

curl -s https://github.jiyuhang.workers.dev/https://raw.githubusercontent.com/Ji-Yuhang/docker-pull-proxy/main/trigger.txt -o $trigger_file
echo $trigger_file

cat $trigger_file |awk '{print "docker pull "$2} '
cat $trigger_file |awk '{print "docker tag "$2 " " $1} '


cat $trigger_file |awk '{print "docker pull "$2} ' > $tag_sh_file
cat $trigger_file |awk '{print "docker tag "$2 " " $1} ' >> $tag_sh_file

# cat $file |awk '{print "ansible all -m command -a \"docker pull " $2 "\"" } '
# cat $file |awk '{print "ansible all -m command -a \"docker tag " $2 $1 "\"" } '
echo $tag_sh_file

ansible all -m script -a $tag_sh_file


# proxy curl https://raw.githubusercontent.com/Ji-Yuhang/docker-pull-proxy/main/trigger.txt?token=GHSAT0AAAAAABT3LQ3UM7T4XNGIX4QBECPMYTT4KPQ -o 

# curl https://raw.githubusercontent.com/Ji-Yuhang/docker-pull-proxy/main/trigger.txt |awk '{print "ansible all -m command -a \"docker pull " $2 "\"" } '
# curl https://raw.githubusercontent.com/Ji-Yuhang/docker-pull-proxy/main/trigger.txt |awk '{print "ansible all -m command -a \"docker tag " $2 $1 "\"" } '


# curl https://github.jiyuhang.workers.dev/https://raw.githubusercontent.com/Ji-Yuhang/docker-pull-proxy/main/trigger.txt  |awk '{print "ansible all -m command -a \"docker pull " $2 "\"" } '
# curl https://github.jiyuhang.workers.dev/https://raw.githubusercontent.com/Ji-Yuhang/docker-pull-proxy/main/trigger.txt  |awk '{print "ansible all -m command -a \"docker tag " $2 $1 "\"" } '

# ansible all -m command -a 'docker pull registry.cn-beijing.aliyuncs.com/ijx-public/kube-state-metrics:v2.0.0'
# ansible all -m command -a 'docker tag registry.cn-beijing.aliyuncs.com/ijx-public/kube-state-metrics:v2.0.0 k8s.gcr.io/kube-state-metrics/kube-state-metrics:v2.0.0'
