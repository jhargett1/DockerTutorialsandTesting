docker build -t jhargett1/aws-bootcamp-cruddur-2023:myscript . -f build.Dockerfile

docker container create --name extract jhargett1/aws-bootcamp-cruddur-2023:myscript
docker container cp extract:/go/src/github.com/jhargett1/DockerTutorialsandTesting/
docker container rm - extract

docker build --no-cache -t jhargett1/aws-bootcamp-cruddur-2023:myscriptlatest .
rm ./myscript.sh