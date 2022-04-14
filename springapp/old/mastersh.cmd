    1  kubectl get nodes
    2  mkdir springapp
    3  cd springapp
    4  ssh-keygen
    5  vi /roo/.ssh/id_rsa.pub
    6  cat /root/.ssh/id_rsa.pub
    7  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTtlxoC74kUUiSC5nIAS8NdyKUO/eeSEzH/powVCbJ7wvdQd6g3Rd0q1q4hXRF689FewcXJ/JSNShDjB5cwh20sHzpVpV9TARyP9DutOog16tJ8N3FCq4jBTqnisRoglKZQRK90kgfV+ipVsj0TDkuXsQ//HWw05klKx+0QL44VCZcZixLWTtHW84gs67GEKqVVjpVnRLY66+H1EBvLfDDt8TEPmZnl0qUo1GhWVF8BOQCprLsIkC8V/oW7ZKAdKx0qsGb+9J3JPTDmbUp++V9PnbRWCFEH0dOU4LgtOneibF+/o41/VNoYqwQRjr4A95tFoPvOaLN42C3OKfAOrPd root@ip-172-31-6-66.ec2.internal
    8  ls
    9  mkdir springapp
   10  git initi
   11  git init
   12  yum install git
   13  git init
   14  git push origin
   15  git add .
   16  git commit -m "k8s master initial"
   17  git remote add origin git@github.com:AdolfoRodriguezUS/InfraOptimization-ProOne.git
   18  git push
   19  ls
   20  cd springapp
   21  vi rbac.yml
   22  vi rbac.yml
   23  clear
   24  ls
   25  vi namespaces.yaml
   26  mv rbac.yml rbac.yaml
   27  ls
   28  ls
   29  clear
   30  kubectl apply -f namespaces.yaml
   31  kubectl run springapp --image=bitnami/spring-cloud-dataflow -n=postql
   32  clear
   33  kubectl delete namespace postsql
   34  clear
   35  kubectl apply -f namespaces.yaml
   36  kubectl run springapp --image=bitnami/spring-cloud-dataflow -n=postsql
   37  kubectl run postgresql --image=postgres:latest -n=postsql
   38  kubectl get pods --all-namespaces
   39  kubectl describe postgresql
   40  kubectl describe postgresql -n=postsql
   41  kubectl describe pod postgresql -n=postsql
   42  kubectl get pods --all-namespaces
   43  kubectl logs postgresql
   44  kubectl logs postgresql -n=postsql
   45  vi postgresql.yaml
   46  vi postgresql.yaml
   47  kubectl apply -f postgresql.yaml
   48  vi postgresql.yaml
   49  kubectl apply -f postgresql.yaml
   50  kubectl logs postgresql
   51  kubectl logs postgresql -n=postsql
   52  kubectl get pods --all-namespaces
   53  kubectl delete pods postgresql -n=postsql
   54  kubectl logs postgresql-77b87d676c-57nh9 -n=postsql
   55  vi postgresql.yaml
   56  ls
   57  vi springflow.yaml
   58  vi springflow.yaml
   59  vi springflow.yaml
   60  kubectl get pods --all-namespaces
   61  kubectl delete springapp -n=postsql
   62  kubectl delete pod springapp -n=postsql
   63  clear
   64  ls
   65  kubectl apply -f springflow.yaml -o wide
   66  clear
   67  ls
   68  kubectl apply --help
   69  clear
   70  ls
   71  kubectl apply -f sprinflow.yaml -o json
   72  clear
   73  ls
   74  kubectl apply -f springflow.yaml -o json
   75  kubectl get pods -n=postsql
   76  kubectl get services -n=postsql
   77  kubectl get deployments -n=postsql
   78  kubectl logs springflow-744fc84dd-qxztv 
   79  kubectl logs springflow-744fc84dd-qxztv -n=postsql
   80  kubectl
   81  kubectl get nodes
   82  kubectl get nodes
   83  kubectl get nodes
   84  kubectl get nodes
   85  ls
   86  sudo su
   87  ls
   88  clear
   89  git add .
   90  ls
   91  git commit -m "Initial Database and App Config"
   92  git push origin master
   93  git push --help
   94  git push --set-upstream origin master
   95  git push --help
   96  git pull remote master
   97  ls
   98  git push origin
   99  git pull master
  100  git pull remote master
  101  git add .
  102  ls
  103  clea
  104  cd springapp
  105  ls
  106  vi springflow.yaml
  107  vi springflow.yaml
  108  kubectl describe springflow -n=postsql
  109  kubectl get pods
  110  kubectl get nodes
  111  kubectl get services -n=postsql
  112  kubectl describe service springsql -n=postsql
  113  ls
  114  curl http://54.156.103.115:8080
  115  curl http://10.44.0.1:8080
  116  ping 54.156.103.115
  117  ls
  118  vi springflow.yaml 
  119  kubectl get deployment -n=postsql
  120  kubectl expose deployment springflow --type=LoadBalancer --name=publicspring -n=postsql
  121  kubectl describe service publicspring
  122  kubectl describe service publicspring -n=postsql
  123  curl http://54.156.103.115:8080
  124  ipconfig
  125  ifconfig
  126  reboot
  127  cd /home/adolfo
  128  openssl genrsa -out adolfo.key 2048
  129  openssl req -new -key adolfo.key -out adolfo.csr -subj "/CN=adolfo/O=postsql"
  130  openssl x509 -req -in adolfo.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kuberentes/pki/ca.key -CAcreateserial -out adolfo.crt -days 180
  131  openssl x509 -req -in adolfo.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kuberentes/pki/ca.crt -CAcreateserial -out adolfo.crt -days 180
  132  ls /etc/kubernetes
  133  ls /etc/kubernetes/pki
  134  clear
  135  openssl genrsa -out adolfo.key 2048
  136  openssl req -new -key adolfo.key -out adolfo.csr -subj "/CN=adolfo/O=postsql"
  137  openssl x509 -req -in adolfo.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.crt -CAcreateserial -out adolfo.crt -days 180
  138  vi adolfo.csr
  139  vi adolfo.key
  140  openssl x509 -req -in adolfo.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.key -CAcreateserial -out adolfo.crt -days 180
  141  cp /etc/kubernetes/admin.conf adolfo.conf
  142  ls
  143  cat adolfo.conf
  144  kubectl --kuebconfig=/home/adolfo/adolfo.conf get pods -n=postsql
  145  kubectl --kubeconfig=/home/adolfo/adolfo.conf get pods -n=postsql
  146  ls
  147  pwd
  148  cd ~
  149  ls
  150  exit
  151  ls
  152  etcd
  153  exit
  154  kubectl get pods
  155  kubetctl get pods -n=postsql
  156  kubectl get pods -n=postsql
  157  curl http://54.156.103.115:8080
  158  kubectl describe service publicspring -n=postsql
  159  kubectl get services -n=postsql
  160  ifconfig
  161  ls
  162  kubectl get pods
  163  kubectl get pods -n=postsql
  164  kubectl logs postgresql-77b87d676c-57nh9 -n=postsql
  165  time
  166  currtime
  167  clear
  168  kubectl logs postgresql-77b87d676c-57nh9 -n=postsql
  169  ifconfig
  170  ping localhost
  171  vi /etc/hosts
  172  iptables
  173  sestatus
  174  sudo systemctl status firewalld
  175  sudo systemctl status iptables
  176  sudo service firewalld stop
  177  clear
  178  ifconfig
  179  traceroute
  180  yum install iptools
  181  yum install net-tools
  182  tracert
  183  traceroute
  184  yum install traceroute -y
  185  tracerute
  186  traceroute
  187  traceroute 54.156.103.115
  188  ipconfig
  189  ifconfig
  190  ifconfig --help
  191  kubectl get services
  192  kubectl get services -n=postsql
  193  curl localhost:8080
  194  curl localhost:8080
  195  curl http://10.97.196.109:8080
  196  kubectl get deployments -o wide -n=postsql
  197  kubectl logs springflow
  198  kubectl logs springflow -n=postsql
  199  lc
  200  kubectl get pods
  201  kubectl get pods -n=pos
  202  kubectl logs springflow-744fc84dd-qxztv -n=postsql
  203  kubectl logs springflow-744fc84dd-qxztv -n=postsql
  204  kubectl get services -n=postsql
  205  kubectl delete service publicspring
  206  kubectl delete service publicspring -n=postsql
  207  kubectl delete service springsql -n=postsql
  208  ls
  209  cd springapp/
  210  ls
  211  cd springapp/
  212  ls
  213  vi springflow.yaml
  214  ls
  215  kubectl apply -f springflow.yaml
  216  kubectl get deployments -o wide -n=postsql
  217  kubectl get pods -n=postsql
  218  kubectl logs springflow-744fc84dd-qxztv -n=postsql
  219  kubectl logs springflow-744fc84dd-qxztv -n=postsql
  220  kubectl logs springflow-744fc84dd-qxztv -n=postsql
  221  kubectl describe service springsql -n=postsql
  222  ls
  223  vi postgresql.yaml
  224  vi springflow.yaml
  225  kubectl delete service springflow -n=postsql
  226  kubectl delete service springapp -n=postsql
  227  kubectl delete service springsql -n=postsql
  228  kubectl get deployment -n=postsql
  229  kubectl delete deployment springflow -n=postsql
  230  kubectl apply -f springflow.yaml
  231  kubectl logs springflow-744fc84dd-
  232  kubectl get pods -n=postsql
  233  kubectl describe pods springflow-744fc84dd-gj95l
  234  kubectl describe pods springflow-744fc84dd-gj95l -n=postsql
  235  kubectl get pods -n=postsql
  236  kubectl logs springflow-744fc84dd-gj95l -n=postsql
  237  clear
  238  kubectl delete deployment springflow -n=postsql
  239  kubectl delete service springapp -n=postsql
  240  kubectl delete service springflow -n=postsql
  241  ls
  242  vi rbac.yaml
  243  vi netpolicy.yaml
  244  vi netpolicy.yaml
  245  kubectl apply -f netpolicy.yaml
  246  vi netpolicy.yaml
  247  kubectl apply -f netpolicy.yaml
  248  nano netpolicy.yaml
  249  yum install nano
  250  nano netpolicy.yaml
  251  ls
  252  kubectl create -f sprinflow.yaml
  253  kubectl create -f springflow.yaml
  254  kubectl apply -f netpolicy.yaml
  255  vi netpolicy.yaml
  256  kubectl apply -f netpolicy.yaml
  257  kubectl describe service springflow -n=postsql
  258  netstat -nap |grep 325612
  259  netstat -nap |grep 32561
  260  kubectl get networkpolicy -namespace=postsql
  261  kubectl get networkpolicy -n=postsql
  262  user add adolfo
  263  clear
  264  useradd adolfo
  265  passwd adolfo
  266  mkdir /home/adolfo
  267  sudo -i
  268  ls
  269  clear
  270  ls
  271  vi rbac.yaml
  272  kubectl apply -f rbac.yaml
  273  kubectl --kubeconfig=/home/adolfo/adolfo.conf get pods -n=postsql
  274  wget https://github.com/etcd-io/etcd/releases/download/v3.3.13/etcd-v${RELEASE}-linux-amd64.tar.gz
  275  clear
  276  yum install wget
  277  clear
  278  wget https://github.com/etcd-io/etcd/releases/download/v${RELEASE}/etcd-v${RELEASE}-linux-amd64.tar.gz
  279  export RELEASE="3.3.13"
  280  clear
  281  wget https://github.com/etcd-io/etcd/releases/download/v3.4.18/etcd-v3.4.18-linux-amd64.tar.gz
  282  ls
  283  mv etc*.* ../..
  284  cd ../..
  285  ls
  286  tar xzvf etcd-v3.4.18-linux-amd64.tar.gz -C etcd-v3
  287  mkdir etcd-v3
  288  tar xzvf etcd-v3.4.18-linux-amd64.tar.gz -C etcd-v3
  289  ls
  290  rm etcd-v3.4.18-linux-amd64.tar.gz 
  291  cd etcd-v3/
  292  ls
  293  cd etcd-v3.4.18-linux-amd64/
  294  ls
  295  ls
  296  mv etcdctl /usr/local/bin
  297  etc --version
  298  etcd --version
  299  /usr/local/bin/etcd --version
  300  ls
  301  mv etcd /usr/local/bin
  302  etcd --version
  303  /usr/local/bin/etcd --version
  304  etcdctl
  305  PATH
  306  SET
  307  clear
  308  sudo su
  309  exit
  310  etcd
  311  clear
  312  ls /usr/local/bin
  313  export PATH=$PATH:/usr/local/bin
  314  etcd
  315  clear
  316  etcdctl
  317  etcdctl --version
  318  etcdctl -version
  319  clear
  320  etcd --version
  321  ls
  322  cd springapp
  323  ls
  324  cd springapp
  325  ls
  326  ps -ef |grep etcd
  327  ETCD_API=3 etcdctl --endpoints=127.0.0.1:2379 -cacert /etc/kubernetes/pki/etcd/ca.crt --cert /etc/kubernetes/pki/etcd/server.crt --key /etc/kubernetes/pki/etcd/server.key snapshot save /etcd-backup/etcd-snapshot-latest.db
  328  ETCD_API=3 etcdctl --endpoints=127.0.0.1:2379 --cacert /etc/kubernetes/pki/etcd/ca.crt --cert /etc/kubernetes/pki/etcd/server.crt --key /etc/kubernetes/pki/etcd/server.key snapshot save /etcd-backup/etcd-snapshot-latest.db
  329  clear
  330  etcd --version
  331  ETCD_API=3 etcdctl --endpoints=127.0.0.1:2379 --cacert /etc/kubernetes/pki/etcd/ca.crt --cert /etc/kubernetes/pki/etcd/server.crt --key /etc/kubernetes/pki/etcd/server.key snapshot save ../../etcd-snapshot-latest.db
  332  ls ../../
  333  ETCD_API=3 etcdctl --endpoints=127.0.0.1:2379 --cacert /etc/kubernetes/pki/etcd/ca.crt --cert /etc/kubernetes/pki/etcd/server.crt --key /etc/kubernetes/pki/etcd/server.key snapshot save ../../etcd-snapshot-latest.db ETCD_API=3 etcdctl --endpoints=127.0.0.1:2379 --cacert /etc/kubernetes/pki/etcd/ca.crt --cert /etc/kubernetes/pki/etcd/server.crt --key /etc/kubernetes/pki/etcd/server.key snapshot save ../../etcd-snapshot-latest.db
  334  vi ../../etcd-snapshot-latest.db
  335  clear
  336  kubectl get services
  337  kubectl get services -n=postsql
  338  curl http://10.97.24.6:8080
  339  kubectl get services
  340  curl http://localhost:8080
  341  clear
  342  kubectl get ingress 
  343  kubectl get ingress -n=postsql
  344  ls
  345  vi netpolicy.yaml 
  346  vi netingress.yaml
  347  kubectl apply -f netingress.yaml 
  348  kubectl get ingress
  349  vi netingress.yaml
  350  vi /etc/hosts
  351  curl ec2-54-156-103-115.compute-1.amazonaws.com
  352  vi /etc/hosts
  353  ping 54.156.103.115
  354  ping 54.156.103.115:8080
  355  curl http://54.156.103.115:8080
  356  curl http://54.156.103.115:80
  357  ping ec2-54-156-103-115.compute-1.amazonaws.com
  358  vi netingress.yaml
  359  kubectl get service -n=postsql
  360  vi netingress.yaml
  361  kubectl delete ingress
  362  kubectl get ingress
  363  kubectl delete ingress spring-ingress
  364  kubectl apply -f netingress.yaml 
  365  kubectl get ingress
  366  kubectl get ingress
  367  kubectl get ingress
  368  kubectl get ingress
  369  kubectl get ingress
  370  kubectl get ingress
  371  kubectl get ingress
  372  kubectl get ingress
  373  kubectl get ingress
  374  kubectl get ingress
  375  kubectl get ingress
  376  kubectl get ingress
  377  kubectl get ingress
  378  kubectl get ingress
  379  kubectl get ingress
  380  kubectl get ingress
  381  kubectl get ingress
  382  kubectl get ingress
  383  kubectl get ingress
  384  kubectl get ingress
  385  kubectl get ingress
  386  kubectl get ingress -watch --help
  387  kubectl get ingress -watch --help
  388  kubectl get ingress --watch
  389  ld
  390  ls
  391  curl http://
  392  curl http://
  393  curl http://ec2-54-156-103-115.compute-1.amazonaws.com:80
  394  curl http://ec2-54-156-103-115.compute-1.amazonaws.com:8080
  395  kubectl get ingress -watch --help
  396  kubectl get ingress
  397  ls
  398  vi springflow.yaml
  399  kubectl get ingress -watch --help
  400  kubectl get ingress 
  401  ls
  402  kubectl get ingress
  403  kubectl delete ingress spring-ingress
  404  ls
  405  cp netingress.yaml lbingress.yaml
  406  vi lbingress.yaml 
  407  vi springflow.yaml 
  408  vi lbingress.yaml 
  409  kubectl apply -f lbingress.yaml 
  410  vi lbingress.yaml 
  411  kubectl apply -f lbingress.yaml 
  412  vi lbingress.yaml 
  413  kubectl apply -f lbingress.yaml 
  414  kubectl apply -f lbingress.yaml 
  415  vi lbingress.yaml 
  416  ls
  417  vi netingress.yaml 
  418  vi netingress.yaml 
  419  kubectl apply -f netingress.yaml 
  420  vi netingress.yaml 
  421  kubectl apply -f netingress.yaml 
  422  vi netingress.yaml 
  423  kubectl apply -f netingress.yaml 
  424  vi netingress.yaml 
  425  kubectl apply -f netingress.yaml 
  426  kubectl get ingress
  427  curl http://ec2-54-156-103-115.compute-1.amazonaws.com
  428  curl http://ec2-54-156-103-115.compute-1.amazonaws.com
  429  ls
  430  yum install apache
  431  yum install httpd
  432  systemctl restart httpd.service
  433  systemctl stop httpd.service
  434  yum remove httpd
  435  ls
  436  vi loadbalancer.yaml
  437  kubectl apply -f loadbalancer.yaml 
  438  kubectl get services
  439  kubectl get services
  440  kubectl get services
  441  kubectl get services
  442  kubectl get services
  443  kubectl get services
  444  kubectl describe services postsql-lb
  445  kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.2/deploy/static/provider/cloud/deploy.yaml
  446  kubectl get pods --namespace=ingress-nginx
  447  kubectl get pods --namespace=ingress-nginx
  448  kubectl get pods --namespace=ingress-nginx
  449  kubectl get pods --namespace=ingress-nginx
  450  kubectl get pods --namespace=ingress-nginx
  451  kubectl get pods --namespace=ingress-nginx
  452  kubectl get pods --namespace=ingress-nginx
  453  kubectl get pods --namespace=ingress-nginx
  454  kubectl logs ingress-nginx-admission-create-l2ntl -n=ingress-nginx
  455  kubectl get pods --namespace=ingress-nginx
  456  kubectl get pods --namespace=ingress-nginx
  457  kubectl create deployment demo --image=httpd --port=80
  458  kubectl expose deployment demo
  459  kubectl create ingress demo-localhost --class=nginx   --rule=demo.localdev.me/*=demo:80
  460  kubectl port-forward --namespace=ingress-nginx service/ingress-nginx-controller 8080:80
  461  kubectl port-forward --namespace=ingress-nginx service/ingress-nginx-controller 8080:80 &
  462  clear
  463  curl localhost:8080
  464  kubectl get service ingress-nginx-controller --namespace=ingress-nginx
  465  kubectl get service ingress-nginx-controller --namespace=ingress-nginx
  466  kubectl get service ingress-nginx-controller --namespace=ingress-nginx
  467  curl http:// 10.110.140.179
  468  kubectl delete ingress demo
  469  kubectl delete deployment demo
  470  kubectl delete service demo
  471  kubectl get pods --namespace=ingress-nginx
  472  kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  473  kubectl get service ingress-nginx-controller --namespace=ingress-nginx
  474  kubectl get service ingress-nginx-controller --namespace=ingress-nginx
  475  kubectl delete service ingress-nginx-controller --namespace=ingress-ngninx
  476  kubectl delete service ingress-nginx-controller --namespace=ingress-ngnix
  477  kubectl delete service ingress-nginx-controller --namespace=ingress-nginx
  478  kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  479  kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  480  kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  481  kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  482  kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  483  kubectl get pods
  484  kubectl get pods --all-namespaces
  485  kubectl get pods --all-namespaces
  486  kubectl get pods --all-namespaces
  487  kubectl get pods --all-namespaces
  488  kubectl get pods --all-namespaces
  489  kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  490  wget https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/nlb-with-tls-termination/deploy.yaml
  491  vi deploy.yaml
  492  vi deploy.yaml
  493  kubectl apply -f deploy.yaml
  494  vi deploy.yaml
  495  kubectl get service ingress-nginx-controller --namespace=ingress-nginx
  496  kubectl get service ingress-nginx-controller --namespace=ingress-nginx
  497  kubectl get service ingress-nginx-controller --namespace=ingress-nginx
  498  kubectl get service ingress-nginx-controller --namespace=ingress-nginx
  499  kubectl get service ingress-nginx-controller --namespace=ingress-nginx
  500  kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  501  kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  502  kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  503  kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  504  kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  505  kubectl apply -f deploy.yaml
  506  kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  507  kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  508  kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  509  kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  510  kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  511  kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml
  512  kubectl get namespaces
  513  kubectl get nodes postsql
  514  kubectl get nodes -n=postsql
  515  kubectl get pods -n=postsql
  516  kubectl get ingress
  517  kubectl get ingress
  518  ls
  519  vi netingress.yaml 
  520  vi netingress.yaml 
  521  kubectl get services
  522  vi loadbalancer.yaml 
  523  kubectl get ingress
  524  kubectl describe spring-ingress
  525  kubectl describe ingress spring-ingress
  526  kubectl delete ingress spring-ingress
  527  kubectl get ingress
  528  kubectl delete demo-localhost
  529  kubectl delete ingress demo-localhost
  530  ls
  531  vi netingress.yaml 
  532  kubectl apply -f netingress.yaml 
  533  vi netingress.yaml 
  534  kubectl apply -f netingress.yaml 
  535  kubectl get ingress
  536  kubectl get ingress -all-namespaces
  537  kubectl get ingress --all-namespaces
  538  kubectl get services --all-namespaces
  539  kubectl get services --all-namespaces
  540  kubectl get services --all-namespaces -o wide
  541  kubectl expose deployment springflow --port: 8080 --target-port 8080 -n=postsql
  542  kubectl expose deployment springflow --port 8080 --target-port 8080 -n=postsql
  543  kubectl describe service springflow -n=postsql
  544  kubectl delete service springflow -n=postsql
  545  kubectl expose deployment springflow --port 8080 --target-port 8080 -n=postsql
  546  kubectl describe service springflow -n=postsql
  547  curl http://10.105.20.152:8080
  548  kubectl get ingress
  549  kubectl get ingress --all-namespaces
  550  kubectl delete ingress spring-ingress --all-namespaces
  551  kubectl delete ingress spring-ingress -n=postsql
  552  kubectl delete service springflow -n=postsql
  553  kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.10.2/manifests/namespace.yaml
  554  kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.10.2/manifests/metallb.yaml
  555  kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
  556  ls
  557  cd springapp
  558  cd springapp
  559  ls
  560  vi metallb-config.yaml
  561  kubectl apply -f metallb-config.yaml
  562  vi sprinflow-lb.yaml
  563  kubectl apply -f sprinflow-lb.yaml 
  564  kubectl get services
  565  kubectl get services
  566  curl http://10.105.20.152:8080
  567  curl http://172.31.0.1:8080
  568  ls
  569  ls
  570  vi sprinflow-lb.yaml 
  571  kubectl get services -n=postsql
  572  kubectl get services -n=postsql -o wide
  573  curl http://10.109.254.178:8080
  574  curl http://10.109.254.178:30249
  575  kubectl get pods -n=postsql
  576  kubectl get pods -n=postsql -o wide
  577  curl 10.44.0.1:8080
  578  kubectl get pods -n=postsql
  579  kubectl get deployments -n=postgresql
  580  kubectl get deployments -n=postsql
  581  kubectl get volumes
  582  kubectl get volume
  583  kubectl get persistntvolume
  584  kubectl get pe
  585  kubectl get persistntvolume --all-namespaces
  586  kubectl get persistentvolume --all-namespaces
  587  kubectl get resources
  588  kubectl get resources --all-namespaces
  589  kubectl describe postgresql-77b87d676c-57nh9 -n=postsql
  590  kubectl describe pod postgresql-77b87d676c-57nh9 -n=postsql
  591  kubectl get pods -n=postsql
  592  ls
  593  kubectl ger services -o wide
  594  kubectl get services -o wide
  595  kubectl delete service postsql-lb
  596  kubectl get services -o wide
  597  ls
  598  vi springflow-lb.yaml
  599  ls
  600  mv sprinflow-lb.yaml springflow-lb.yaml
  601  vi springflow-lb.yaml
  602  ls
  603  kubectl get deployments --all-namespaces -o wide
  604  vi springflow-lb.yaml
  605  vi springflow-lb.yaml
  606  kubectl get deployments --all-namespaces -o wide
  607  kubectl get deployments --all-namespaces -o wide
  608  ls
  609  kubectl apply -f springflow-lb.yaml
  610  kubectl get services --all-namespaces
  611  curl http://172.31.0.2:8080
  612  ls
  613  kubectl delete service nginx-lb -n=postsql
  614  ls
  615  ls
  616  ls -l
  617  rm 1
  618  rm 1
  619  ls
  620  ls -l
  621  vi metallb-config.yaml 
  622  kubectl apply -f metallb-config.yaml 
  623  kubectl get service --all-namespaces
  624  ls
  625  kubectl apply -f springflow-lb.yaml
  626  kubectl get service --all-namespaces
  627  curl http://54.156.103.115:8080
  628  netstat | grep 8080
  629  ls
  630  kubectl delete -f springflow-lb.yaml
  631  curl http://54.156.103.115:8080
  632  kubectl apply -f https://raw.githubusercontent.com/mysql/mysql-operator/trunk/deploy/deploy-crds.yaml
  633  kubectl apply -f https://raw.githubusercontent.com/mysql/mysql-operator/trunk/deploy/deploy-operator.yaml
  634  kubectl get deployment -n mysql-operator mysql-operator
  635  kubectl get deployment -n mysql-operator mysql-operator
  636  kubectl get deployment -n mysql-operator mysql-operator
  637  kubectl get deployment -n mysql-operator mysql-operator -watch
  638  kubectl get deployment -n mysql-operator mysql-operator --watch
  639  kubectl kubectl create secret generic mypwds         --from-literal=rootUser=root         --from-literal=rootHost=%         --from-literal=rootPassword="pass123"
  640  kubectl create secret generic mypwds         --from-literal=rootUser=root         --from-literal=rootHost=%         --from-literal=rootPassword="pass123"
  641  kubectl apply -f https://raw.githubusercontent.com/mysql/mysql-operator/trunk/samples/sample-cluster.yaml
  642  kubectl get innodbcluster --watch
  643  kubectl get innodbcluster --watch
  644  kubectl get pods --all-namespaces
  645  kubectl logs mycluster-0
  646  kubectl logs mycluster-0 mysql
  647  kubectl describe mycluster-0
  648  kubectl describe pods  mycluster-0
  649  kubectl delete -f https://raw.githubusercontent.com/mysql/mysql-operator/trunk/samples/sample-cluster.yaml
  650  kubectl delete secret generic mypwds         --from-literal=rootUser=root         --from-literal=rootHost=%         --from-literal=rootPassword="pass123"
  651  kubectl delete secret generic mypwds
  652  kubectl delete -f https://raw.githubusercontent.com/mysql/mysql-operator/trunk/deploy/deploy-operator.yaml
  653  kubectl ctl delete -f https://raw.githubusercontent.com/mysql/mysql-operator/trunk/deploy/deploy-crds.yaml
  654  kubectl delete -f https://raw.githubusercontent.com/mysql/mysql-operator/trunk/deploy/deploy-crds.yaml
  655  kubectl get pods --all-namespaces
  656  kubectl create -f springflow-lb.yaml
  657  curl http://54.156.103.115:8080
  658  netstat
  659  netstat |grep 8080
  660  netstat |grep 2478
  661  ls
  662  ls
  663  vi coredns-tcp.yaml
  664  vi coredns-udp.yaml
  665  kubectl apply -f coredns-tcp.yaml
  666  kubectl apply -f coredns-udp.yaml
  667  kubectl get services -n=kube-system
  668  yum install httpd
  669  systemctl start httpd
  670  curl localhost:80
  671  curl localhost:8080
  672  curl http://localhost:8080
  673  kubectl get services --all-namespaces
  674  curl https://10.111.152.74:30004
  675  curl http://10.111.152.74:30004
  676  curl http://10.111.152.74:8080
  677  lgout
  678  logut
  679  logout
  680  exit
  681  kubectl get pods
  682  kubectl get pods --all-namespaces
  683  kubectl get pods --all-namespaces
  684  kubectl get services --all-namespaces
  685  curl http://localhost:3004
  686  curl http://localhost:30004
  687  kubectl get hpa -n=postsql
  688  kubectl get hpa -n=postsql
  689  kubectl get hpa -n=postsql -watch
  690  kubectl get hpa -n=postsql --watch
  691  kubectl get hpa -n=postsql --watch
  692  kubectl get hpa -n=postsql
  693  kubectl get hpa -n=postsql
  694  kubectl get hpa -n=postsql
  695  kubectl get hpa -n=postsql
  696  kubectl get hpa -n=postsql
  697  kubectl get hpa -n=postsql
  698  kubectl get hpa -n=postsql
  699  kubectl get hpa -n=postsql
  700  kubectl get hpa -n=postsql
  701  kubectl get hpa -n=postsql
  702  kubectl get hpa -n=postsql
  703  kubectl get hpa -n=postsql --watch
  704  kubectl get hpa -n=postsql --watch
  705  kubectl get hpa -n=postsql --watch
  706  netstat |grep 32671
  707* 
  708  netstat |grep 32671
  709  kubectl get hpa -n=postsql --watch
  710  kubectl top
  711  kubectl top pods -n=postsql
  712  kubectl ger services -n=postsql
  713  kubectl get services -n=postsql
  714  ls
  715  cd springapp/
  716  cd springapp
  717  ls
  718  vi springflow-lb.yaml 
  719  vi metallb-config.yaml 
  720  vi netingress.yaml 
  721  vi metallb-config.yaml 
  722  vi netingress.yaml 
  723  kubectl get ingress --all-namespaces
  724  kubectl get ingresses --all-namespaces
  725  kubectl get loadbalancer --all-namespaces
  726  kubectl get services --all-namespaces
  727  kubectl get pods -n=postsql
  728  kubectl logs postgresql-77b87d676c-57nh9 -n=postsql
  729  cd ..
  730  ls
  731  git push
  732  git push --set-upstream origin master
  733  clear
  734  git push --set-upstream origin master
  735  git pull
  736  git pull master
  737  git pull remote master
  738  git pull master git@github.com:AdolfoRodriguezUS/InfraOptimization-ProOne.git
  739   git pull origin master --allow-unrelated-histories
  740   git pull origin master
  741  ls
  742  cd terraform
  743  ls
  744  cd ec2
  745  ls
  746  cd ..
  747  cd ansible
  748  ls
  749  cd ansible
  750  cd ..
  751  ls
  752  cd ansible
  753  ls
  754  clear
  755  cd ..
  756  ls
  757  git push origin master
  758  git add .
  759  git push origin master
  760  git commit -m "k8s manifests"
  761  git push origin master
  762  ls
  763  cd springapp
  764  ls
  765  cd old
  766  ls
  767  history >mastersh.cmd
