SCRIPT_DIR=$(pwd)
TESTS_DIR=$SCRIPT_DIR/SampleTestCases

XSERVER=/tmp/.X11-unix:/tmp/.X11-unix
REPO=docker-ride-gui:latest

docker run -d --rm -e DISPLAY=$DISPLAY -v $XSERVER -v $TESTS_DIR:/opt/RIDE/SampleTestCases $REPO