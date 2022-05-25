sed -i "s/DOCKER_TAG/$1/g" build_image.yml
sed -i "s/DOCKER_TAG/$1/g" kube_deploy.yml
