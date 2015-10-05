# Add ROS package server.
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://pool.sks-keyservers.net:80 --recv-key 0xB01FA116

# Update package list.
sudo apt-get update

# Install ROS.
sudo apt-get install ros-jade-desktop-full -y

# Initilialize rosdep.
sudo rosdep init
rosdep update

# Environment setup
echo "source /opt/ros/jade/setup.bash" >> /home/vagrant/.bashrc

source /opt/ros/jade/setup.bash

sudo apt-get install python-rosinstall -y
