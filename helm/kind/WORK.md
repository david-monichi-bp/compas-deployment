
systemctl stop nginx

./kind-setup.sh
./kind-cleanup.sh

kubectl config get-contexts

kubectl config set-context kind-kind




