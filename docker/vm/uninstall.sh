# stop and remove its containers
docker rm $(docker stop $(docker ps -a -q --filter ancestor=vm --format="{{.ID}}"))

# remove an image
docker image rm vm

# cleanup
docker image prune
