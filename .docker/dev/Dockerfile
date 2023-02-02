FROM ros:noetic

WORKDIR /workspace

RUN apt-get update && apt-get install -y \
    ros-${ROS_DISTRO}-ros-tutorials \
    ros-${ROS_DISTRO}-common-tutorials

RUN rm -rf /var/lib/apt/lists/*

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1001 ubuntu
USER ubuntu

RUN . /opt/ros/${ROS_DISTRO}/setup.sh
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc

CMD ["roscore"]
