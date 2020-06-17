set -e

cp -r ~/.ssh ./
cp -r ~/.gitconfig ./

docker build -t vm .

rm -rf .ssh .gitconfig

echo "-- Create a container like this:"
echo "docker run --name vm -v ~/workspace/:/home --cap-add SYS_PTRACE -it vm"

echo "-- Reuse it by:"
echo "docker start -i vm"
