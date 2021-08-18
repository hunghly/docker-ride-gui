FROM ubuntu:20.04

# Install Python
RUN DEBIAN_FRONTEND=noninteractive apt update && \
    apt-get upgrade -y && \
    apt-get install -y python3 \
    python3-pip \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-dev

# Install Robot Framework
RUN pip install robotframework

# Install wxWidget Libraries
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y dpkg-dev \
    python3.8-dev \
    libpython3.8-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libgstreamer-plugins-base1.0-dev \
    libgtk-3-dev \
    libjpeg-dev \
    libnotify-dev \
    libpng-dev \
    libsdl2-dev \
    libsm-dev \
    libtiff-dev \
    libwebkit2gtk-4.0-dev \
    libxtst-dev

# Install wxPython
RUN pip install -U wxPython==4.0.7.post2

# Install RIDE
RUN pip install psutil && \
    pip install -U --pre robotframework-ride

# Install SeleniumLibraries
RUN pip install --upgrade robotframework-seleniumlibrary

# Install firefox and chrome
RUN apt-get -y install firefox \
    libcanberra-gtk-module \
    libcanberra-gtk3-module \
    wget
RUN cd /tmp && \
    apt-get install -y fonts-liberation xdg-utils && \
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    dpkg -i google-chrome-stable_current_amd64.deb

RUN sed -i -e 's/chrome" "$@"/chrome" "$@" --no-sandbox --disable-dev-shm-usage/g' /opt/google/chrome/google-chrome

# Web driver manager installs needed browser drivers
RUN pip install webdrivermanager && \
    webdrivermanager firefox chrome --linkpath /usr/local/bin

# Replace old wxPython file to fix locale bug
COPY application.py /usr/local/lib/python3.8/dist-packages/robotide/application/application.py

RUN mkdir -p /opt/RIDE
WORKDIR /opt/RIDE

CMD ["ride.py"]