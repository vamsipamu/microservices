curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws version
aws --version
vim .bashrc
source .bashrc
# Download the latest stable release
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
# Make it executable
chmod +x kubectl
# Move it to your system path
sudo mv kubectl /usr/local/bin/
# Verify installation
kubectl version --client
# Download the latest release
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
# Move the binary to your system path
sudo mv /tmp/eksctl /usr/local/bin
# Verify installation
eksctl version
aws s3 ls
eksctl create cluster --name EKS-1 --region=us-east-1 --zones=us-east-1a,us-east-1b --without-nodegroup
eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster EKS-1 --approve
eksctl create nodegroup --cluster=EKS-1 --region=us-east-1 --name=node2 --node-type=t3.medium --nodes=3 -nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=kopskey -managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
eksctl create nodegroup --cluster=EKS-1 --region=us-east-1 --name=node2 --node-type=t3.medium --nodes=3 -nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=kopskey --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
eksctl create nodegroup --cluster=EKS-1 --region=us-east-1 --name=node2 --node-type=t3.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=kopskey --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
ll
kubectl get po
kubectl get role -n webappeksctl utils associate-iam-oidc-provider --region ap-south-1 --cluster EKS-1 --approve

eksctl create cluster --name EKS1pamu --region=us-east-1 --zones=us-east-1a,us-east-1b --without-nodegroup
ll
eksctl utils associate-iam-oidc-provider --region ap-south-1 --cluster EKS-1 --approve
eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster EKS1pamu --approve
eksctl create nodegroup --cluster=EKS1pamu --region=us-east-1 --name=node2 --node-type=t3.micro --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=kopskey --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
kubectl get no
vim pod.yml
kubectl create -f pod.yml 
kubectl get containers
kubectl describe pod myppod
kubectl describe pod mypod
yum install git -y
git --version
git init
vim pod.yml 
kubectl create -f pod.yml 
vim pod.yml 
kubectl create -f pod.yml 
vim pod.yml 
kubectl create -f pod.yml 
vim service.yml
vim myservice.yml
vim pod.yml 
vim myservice.yml 
kubectl create -f myservice.yml 
vim myservice.yml 
kubectl create -f myservice.yml 
vim pod.yml 
kubectl create -f pod.yml 
vim pod.yml 
kubectl create -f pod.yml 
kubectl get po
kubectl get po --show=labels
kubectl get po --show-labels
vim myservice.yml 
kubectl create -f myservice.yml 
vim myservice.yml 
kubectl create -f myservice.yml 
vim myservice.yml 
kubectl create -f myservice.yml 
vim myservice.yml 
kubectl create -f myservice.yml 
kubectl get svc
mv myservice.yml clusteripservice
ll
cp clusteripservice nodeportvc
ll
vim nodeportvc

cp clusteripservice nodeportvc.yml
mv nodeportvc nodeportvc.yml
vim nodeportvc.yml 
kubectl create -f nodeportvc.yml 
mv clusteripservice clusteripservice.yml
vim clusteripservice.yml 
kubectl get svc
vim nodeportvc.yml 
ll
vim nodeportvc.yml lbsvc.yml
ll
cp nodeportvc.yml lbsvc.yml
ll
vim lbsvc.yml 
kubectl create -f lbsvc.yml 
vim lbsvc.yml 
kubectl create -f lbsvc.yml 
vim lbsvc.yml 
kubectl create -f lbsvc.yml 
vim lbsvc.yml 
kubectl create -f lbsvc.yml 
vim lbsvc.yml 
kubectl create -f lbsvc.yml 
kubectl get svc
history
kubectl get svc
ll
vim replicacontroller.yml
kubectl create -f replicacontroller.yml 
kubectl get p[o
kubectl get po
kubectl get po --show-lables
kubectl get po --show-lable
kubectl get po --show-labels
kubectl delete pod myrc-bj84w
kubectl get po --show-labels
cp replicacontroller.yml replicaset.yml
vim replicaset.yml 
kubectl create -f replicaset.yml 
vim replicaset.yml 
kubectl create -f replicaset.yml 
vim replicaset.yml 
kubectl create -f replicaset.yml 
kuibectl get po
kubectl get po
kubectl describe rc
kubectl get rs
kubectl get rs -o wide
kubectl get rs all
kubectl get all
kubectl scale rs myrs --replicas 10
kubectl get rs
kubectl scale rs myrs --replicas 2
vim deployment.yml
kubectl create -f deployment.yml 
vim deployment.yml
kubectl create -f deployment.yml 
vim deployment.yml
kubectl create -f deployment.yml 
vim deployment.yml
kubectl create -f deployment.yml 
vim deployment.yml
kubectl create -f deployment.yml 
vim deployment.yml
kubectl create -f deployment.yml 
kubectl apply -f deployment.yml 
kubectl get deployment
kubectl get svc
kubectl ghet rs
kubectl get rs
kubectl set image deployment 
kubectl get deployment
kubectl set image deployment/mydeployment depcont=apache
kubectl set image deployment/mydeployment depcont=mysql
kubectl set image deployment/mydeployment depcont=ggole
kubectl rollout history deployment/mydeployment
kubectl get rs
kubectl rollout history deployment/mydeployment
kubectl rollout undo deploymen/mydeployment --to-revision=2
kubectl rollout undo deployment/mydeployment --to-revision=2
kubectl rollout undo deployment/mydeployment --to-revision=1
kubectl rollout undo deployment/mydeployment --to-revision=4
kubectl rollout status deployment/mydeployment
vim daemon.yml
kubectl create -f daemon.yml 
vim daemon.yml
kubectl create -f daemon.yml 
kubectl get po
kubectl get po -n daemonset
vim daemon.yml
kubectl describe ds mydset
kubectl get ns
kubectl create ns proddev
kubectl config set-context --current --namespace=proddev
kubectl config view --minify | gerp proddev
kubectl config view --minify | gerp namespace
kubectl config view --minify | grep namespace
kubectl create namespace dev
kubectl create namespace qa
kubectl config set-contect --current --namepace=dev
kubectl config set-contex\t --current --namepace=dev
kubectl config set-context --current --namespace=dev
kubectl config view --minify | grep namespace
netstat -an
kubectl config set-context --current --namespace=default
kubectl config view --minify | grep namespace
vim emptydirvol.yml
kubectl create -f emptydirvol.yml 
vim emptydirvol.yml
kubectl create -f emptydirvol.yml 
vim emptydirvol.yml
kubectl create -f emptydirvol.yml 
kubectl get volumes
kubectl get volume
kubectl exec -it --container 
vim emptydirvol.yml
kubectl exec -it --container volcont1 --bash
kubectl exec -it --container volcont1 --/bin/bash/
kubectl exec -it devops --container volcont1 --/bin/bash/
kubectl exec -it devops --container volcont1 -- bash
kubectl get po
kubectl exec -it mydepforvol --container volcont1 -- bash
kubectl exec -it mydepforvol-6b9bd89cb-h14t4 --container volcont1 -- bash
kubectl get rs
kubectl get po -n rs
kubectl get po -rs 
cp emptydirvol.yml hostpathvol.yml
vim hostpathvol.yml 
kubectl create -f hostpathvol.yml 
vim hostpathvol.yml 
kubectl create -f hostpathvol.yml 
vim hostpathvol.yml 
kubectl create -f hostpathvol.yml 
ll
git init
git remote add origin https://github.com/vamsipamu/MYK8-s
git add .
ll
git commit -m "copy my files"
git push origin master
eksctl create cluster --name EKS1pamu --region=us-east-1 --zones=us-east-1a,us-east-1b --without-nodegroup
eksctl delete cluster --name EKS1pamu --region us-east-1
ll
eksctl create cluster --name EKS-1 --region=us-east-1 --zones=us-east-1a,us-east-1b --without-nodegroup
eksctl create cluster --name EKS1p --region=us-east-1 --zones=us-east-1a,us-east-1b --without-nodegroup
 eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster EKS1p --approve
 eksctl utils associate-iam-oidc-provider --region ap-south-1 --cluster EKS-1 --approve
:
 eksctl create nodegroup --cluster=EKS1p --region=us-east-1 --name=node2 --node-type=t3.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=kopskey --
 managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
 eksctl create nodegroup --cluster=EKS1p --region=us-east-1 --name=node2 --node-type=t3.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=kopskey --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
ll
sh tools.sh
systemctl status docker
yum install docker -y
systemctl status docker
systemctl start docker
vim tools.sh 
chmod 777 ///var/run/docker.sock
yum install git -y
systemctl status jenkins
kubectl get ns
kubectl crreate ns webapps
kubectl create ns webapps
vim service.yml 
kubectl create -f service.yml 
vim role.yml 
kubectl create -f role.yml 
vim role.yml 
kubectl create -f role.yml 
vim rolebinding.yml 
kubectl create -f rolebinding.yml 
vim secret.yml 
kubectl create -f secret.yml 
kubectl describe secret mysecret -n webapps
yum install git -y
kubectl get all
kubectl get all -n webapps
ll
git push -u origin main
 git origin -v
kubectl create -f rolebinding.yml 
git remote -v
git status
git add .
git commit -m "myprojectchanges"
git push origin -u main
git remote add origin https://github.com/vamsipamu/microservices.git
git remote set-url origin https://github.com/vamsipamu/microservices.git
git branch
git push -u origin main
git pull origin main --rebase
git add .
git rebase --continue
git push origin main
eksctl delete cluster --name EKS1p --region us-east-1
kubectl get all
ll
kubectl get all -n webapps
kubectl apply -f deployment-service.yml --validate=false
kubectl describe secret mysecret -n webapps
eksctl delete cluster --name EKS-1 --region us-east-1
ll
kubectl version
eksctl create cluster --name EKts --region=us-east-1 --zones=us-east-1a,us-east-1b --without-nodegroup
eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster EKSts --approve
eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster EKts --approve
eksctl create nodegroup --cluster=EKS-1 --region=us-east-1 --name=node2 --node-type=t3.medium --nodes=3 -
-nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=kopskey --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
eksctl create nodegroup --cluster=Ekts --region=us-east-1 --name=node2 --node-type=t3.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=kopskey --managed --asg-access --external-dns-access --ful-ecr-access --appmesh-access --alb-ingress-access
eksctl create nodegroup --cluster=Ekts --region=us-east-1 --name=node2 --node-type=t3.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=kopskey --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
eksctl create nodegroup --cluster=EKts --region=us-east-1 --name=node2 --node-type=t3.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=kopskey --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
kubectl ls nodes
ll
kubectl list ns
kubectl get ns
eksctl delete cluster --name EKS-1 --region us-east-1
eksctl delete cluster --name EKts --region us-east-1
eksctl create cluster --name EKSts --region=us-east-1 --zones=us-east-1a,us-east-1b --without-nodegroup
eksctl create nodegroup --cluster=EKSts --region=us-east-1 --name=node2 --node-type=t3.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=mustafakey-pair --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
eksctl create nodegroup --cluster=EKSts --region=us-east-1 --name=node2 --node-type=t3.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=kopskey --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
kubectl create seceet generic my-secret --from-literal=username=vamsi@1223
kubectl create secret generic my-secret --from-literal=username=vamsi@1223
kubectl get secret
kubectl describe secret 
kubectl create secret generic my-secret --from-literal=username=swethajenny
kubectl create secret generic my-secret1 --from-literal=username=swethajenny
kubectl describe secret
kubectl describe secret -o yml
kubectl get secret -o yml
kubectl get secret mysecret -o yml
kubectl get secret
kubectl get secret my-secret -o yml
kubectl get secret my-secret -o yaml
kubectl get secret -o yaml
kubectl delete secret
kubectl delete secret my-secret
kubectl delete secret mysecret
kubectl create secret generic swethasecret--from-literal=name=jenny
kubectl create secret generic swethasecret --from-literal=name=jenny
kubectl get secret
kubectl get secret -o yaml
touch vamsi
echo "groom=vamsi, bride:swetha" > vamsi
cat vamsi
kubectl create secret generic filesecret --from-file=vamsi
kubectl get secret -o yaml
kubectl create secret generic filesecret --from-file=vamsi
kubectl describe filesecret
kubectl describe secret filesecret
touch swetha.env
ll
cat swetha.env
echo "name=vamsi place=hyd fallinlovewith=swetha"
echo "name=vamsi place=hyd fallinlovewith=swetha" > swetha.env
kubectl create secret generic envsecret --from-env=swetha.env
kubectl create secret generic envsecret --from-env.file=swetha.env
kubectl create secret generic envsecret --from-env-file=swetha.env
kubectl describe secret swethasecret -o yaml
kubectl describe secret envsecret -o yaml
kubectl describe secret
kubectl describe envsecret
kubectl describe secret envsecret
mkdir vamsi
mkdir vamsi1
cd vamsi1/
touch secret1
cat "user=vamsi password=user@123" > secret1 
echo "user=vamsi password=user@123" > secret1 
cd ..
kubectl create secret generic foldersecret --from-file=secret1
kubectl create secret generic foldersecret --from-file=vamsi1
kubectl get secret
kubectl create secret generic keysecret --from-literal=password=myself09123
vim secret.yml 
vim pod.yml 
kubectl apply -f pod.yml 
vim pod.yml 
kubectl apply -f pod.yml 
vim pod.yml 
kubectl apply -f pod.yml 
vim pod.yml 
kubectl apply -f pod.yml 
vim pod.yml 
kubectl apply -f pod.yml 
lbectl exec -it mypod /bin/bash
kubectl exec -it mypod /bin/bash
kubectl exec -it mypod
kubectl exec -it mypod /bin
kubectl exec -it mypod /bin/bash/
kubectl exec -it mypod --/bin/bash/
kubectl exec -it mypod -- /bin/bash/
kubectl get po
vim pod.yml 
kubectl apply -f pod.yml 
kubectl exec -it mypod -- /bin/bash/
kubectl get po
vim pod.yml 
kubectl apply -f pod.yml 
kubectl get po
kubectl exec -it mypod -- /bin/bash/
kubectl exec -it mypod --/bin/bash
kubectl exec -it mypod --/bin/bas
kubectl exec -it mypod -- /bin/bash
ll
cat vamsi
vim pod.yml 
eksctl delete cluster --name EKSts --region us-east-1
eksctl create cluster --name EKsap --region=us-east-1 --zones=us-east-1a,us-east-1b --without-nodegroup
eksctl create nodegroup --cluster=EKsap --region=us-east-1 --name=node2 --node-type=t3.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=kopskey --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
eksctl delete cluster --name EKsap --region us-east-1
ll
eksctl delete cluster --name EKsap --region us-east-1
exit
ll
eksctl create cluster --name EKSts --region=us-east-1 --zones=us-east-1a,us-east-1b --without-nodegroup
eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster EKts --approve
eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster EKSts --approve
-region=us-east-1 --name=node2 --node-type=t3.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=kopskey --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-acc-access
eksctl create nodegroup --cluster=EKSts --region=ap-south-1 --name=node2 --node-type=t3.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=kopskey --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
eksctl create nodegroup --cluster=EKSts --region=ap-south-1    -name=node2 --node-type=t3.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=kopskey --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
eksctl create nodegroup --cluster=EKSts --region=us-east-1 --name=node2 --node-type=t3.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=kopskey --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
kubectl get no
vim resourcequota.yml
vim pod.yml 
kubectl get po
vim pod.yml 
vim podrq.yml
ll
vim statefullset.yml
ll
vim podrq.yml
kubectl create -f podrq.yml 
vim podrq.yml
kubectl create -f podrq.yml 
vim podrq.yml
kubectl create -f podrq.yml 
vim podrq.yml
kubectl create -f podrq.yml 
kubectl describe pod mypod
kubectl get ns
kubectl create ns vamsi
kubectl create ns prod
vim RQ.yml
kubectl create -f RQ.yml 
vim RQ.yml
kubectl create -f RQ.yml 
vim RQ.yml
kubectl create -f RQ.yml 
vim RQ.yml
kubectl create -f RQ.yml 
kubectl get resorcequota -n prod
kubectl create ns prod
kubectl get resourcequota -n prod
ll
vim podrq.yml 
kubectl apply -f pod
kubectl apply -f pod.yml 
vim podrq.yml 
kubectl apply -f pod.yml 
kubectl apply -f podrq.yml 
vim podrq.yml 
kubectl apply -f podrq.yml 
vim podrq.yml 
kubectl apply -f podrq.yml 
kubectl get rq
kubectl get resourcequota
kubectl get resourcequota -n prod
ll
vim RQ.yml 
kubectl apply -f podrq.yml 
vim statefullset.yml
kubectl create -f statefullset.yml 
kubectl get po
kubectl delete pod mypod
kubectl get po
kubectl scale statefullset -replicas=3
kubectl scale statefullset --replicas=3
kubectl scale statefulset --replicas=3
kubectl get ststefulset
kubectl get stastefulset
kubectl get statefulset
kubectl scale statefulset mystatefullset --replicas=3
kubectl get po
kubectl scale statefulset mystatefullset --replicas=5
kubectl get po
mkdir myuser
cd myuser
openssl genrsa -out vamsi.key 2048
openssl req -new -key vamsi.key-out vamsi.csr-
openssl req -new -key vamsi.key -out
vamsi.csr -subj "/CN=vamsi/O=group1
exit
openssl req -new -key vamsi.key -out vamsi.csr -subj "/CN=mustafa/O=group1vamsi.csr -subj "/CN=vamsi/O=group1"
openssl req -new -key vamsi.key -out vamsi.csr -subj "/CN=vamsi/O=group1"
ll
openssl x509 -req -in vamsi.csr -CA ~/.EKSts/ca.crt
-CAkey ~/.EKSts/ca.key -CAcreateserial -out vamsi.crt -days 500
openssl x509 -req -in vamsi.csr -CA ~/.EKSts/ca.crt
openssl x509 -req -in vamsi.csr -CA ~/.EKSts/ca.crt-CAkey ~/.EKSts/ca.key -CAcreateserial -out vamsi.crt -days 500
openssl x509 -req -in vamsi.csr -CA ~/.EKSts/ca.crt-CAkey ~/.EKSts/ca.key -CAcreateserial -out vamsi.crt -days 509
openssl x509 -req -in vamsi.csr -CA ~/.EKSts/ca.crt -CAkey ~/.EKSts/ca.key -CAcreateserial -out vamsi.crt -days 500
openssl x509 -req -in vamsi.csr -CA ~/.EKSts/ca.crt -CAkey ~/.EKSts/ca.key -CAcreateserial -out vamsi.crt -days 500openssl x509 -req -in vamsi.csr -CA ~/.EKSts/ca.crt -CAkey ~/.EKSts/ca.key -CAcreateserial -out vamsi.crt -days 500
kubectl config view
ll
cd ..
ll
vim role
vim role.yml 
vim rolebinding.yml 
kubectl auth can i dleete pod
kubectl auth can-i dleete pod
kubectl auth can-i delete pod
vim probes.yml
kubectl create -f probes.yml 
vim probes.yml
kubectl create -f probes.yml 
vim probes.yml
kubectl create -f probes.yml 
vim probes.yml
kubectl create -f probes.yml 
kubectl get po
kubectl describe livenessprobepod
kubectl describe pod livenessprobepod
kubectl exec -it livenessprobepod --bash
kubectl exec -it livenessprobepod -- bash
kubectl exec -it livenessprobepod -- /bin/bash
kubectl get pod livenessprobepod -o jsonpath="{.spec.containers[*].name}"
kubectl exec -it livenessprobepod -c actual-container-name -- /bin/bash
kubectl get pod livenessprobepod -o jsonpath="{.spec.containers[*].name}"
ll
