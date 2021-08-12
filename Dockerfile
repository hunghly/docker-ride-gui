FROM ubuntu:20.04

# Install Python
RUN DEBIAN_FRONTEND=noninteractive apt update && \
    apt-get upgrade -y && \
    apt-get install -y python3 && \
    apt-get install -y python3-pip && \
    apt-get install -y build-essential && \
    apt-get install -y libssl-dev && \
    apt-get install -y libffi-dev && \
    apt-get install -y python3-dev

# Install Robot Framework
RUN pip install robotframework

# Install wxWidget Libraries
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y dpkg-dev python3.8-dev libpython3.8-dev libgl1-mesa-dev libglu1-mesa-dev libgstreamer-plugins-base1.0-dev libgtk-3-dev libjpeg-dev libnotify-dev libpng-dev libsdl2-dev libsm-dev libtiff-dev libwebkit2gtk-4.0-dev libxtst-dev

# Install wxPython
RUN pip install -U wxPython==4.0.7.post2

# Install RIDE
RUN pip install psutil && \
    pip install -U --pre robotframework-ride

# Install SeleniumLibraries
RUN pip install --upgrade robotframework-seleniumlibrary && \
    pip install --upgrade robotframework-selenium2library



CMD ["ride.py"]
