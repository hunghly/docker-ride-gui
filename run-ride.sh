SCRIPT_DIR=$(pwd)
XSERVER=/tmp/.X11-unix:/tmp/.X11-unix
REPO=docker-ride-gui:latest

docker run --rm -e DISPLAY=$DISPLAY -v $XSERVER -v $SCRIPT_DIR/SampleTestCases:/home/robotuser/SampleTestCases $REPO