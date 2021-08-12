SCRIPT_DIR=$(pwd)
XSERVER=/tmp/.X11-unix:/tmp/.X11-unix
REPO=p-test-ridecmd:latest

docker run --rm -e DISPLAY=$DISPLAY -v $XSERVER -v $SCRIPT_DIR/WritingTestCases:/home/robotuser/WritingTestCases $REPO