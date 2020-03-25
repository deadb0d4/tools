set -e -x

docker build -t latex .

echo "-- Create a container like this:"
echo "docker run --name latex -v ~/workspace/latex:/home -it latex"

echo "-- Use it by:"
echo "docker start -i vm"
