ctr -n k8s.io image rm $(ctr -n k8s.io image ls -q | grep netbench)
