FROM lscr.io/linuxserver/openvscode-server:latest

# I would prefer not to have to install python here,
# but it seems the docker-mod python is installed later,
# at runtime...
RUN apt-get update
RUN apt-get install -y \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-dev \
    python3-pip \
    python3-venv

RUN /usr/bin/python3 -m pip install \
    jupyter \
    ipykernel \
    requests \
    numpy \
    pandas \
    matplotlib \
    pycodestyle \
    pycodestyle_magic \
    flake8
