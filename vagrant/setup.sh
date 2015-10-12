# Home folder
HOME=/home/vagrant

# Add ROS package server.
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
apt-key adv --keyserver hkp://pool.sks-keyservers.net:80 --recv-key 0xB01FA116

# Update package list.
apt-get update

# Install ROS.
apt-get install ros-jade-desktop-full -y

# Initilialize rosdep.
rosdep init
rosdep update

# Environment setup
echo "source /opt/ros/jade/setup.bash" >> $HOME/.bashrc

source /opt/ros/jade/setup.bash

apt-get install python-rosinstall -y

# Setup the course workspace
mkdir -p $HOME/projects/catkin/mr2015ws/src

tar -zxf /vagrant/tuw_mr2015-*.tar.gz -C ~/projects/catkin/mr2015ws/src/

cd $HOME/projects/catkin/mr2015ws

catkin_make

echo "source $HOME/projects/catkin/mr2015ws/devel/setup.bash" >> ~/.bashrc
chown -R vagrant:vagrant $HOME

# Setup xfce
echo "allowed_users=anybody" > /etc/X11/Xwrapper.config
sudo apt-get install -y xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
