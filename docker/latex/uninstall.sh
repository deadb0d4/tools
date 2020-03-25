# stop and remove its containers
docker rm $(docker stop $(docker ps -a -q --filter ancestor=latex --format="{{.ID}}"))

# remove an image
docker image rm latex

# cleanup
docker image prune
