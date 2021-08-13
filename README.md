# README
This image allows users to start up RIDE and execute Robotframework tests. It will automatically grab the required Chrome/Firefox drivers needed to do Selenium testing.

Requires X11 Server installed.
Verify your X server is accepting from any host by using xhost + in terminal

Run container with: docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v [absolute_path_to_tests_folder]:/home/robotuser/test_folder_name hunghly/docker-ride-gui
