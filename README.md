# ROS development enviroment
[ROS](http://www.ros.org/) development enviroment for the course Mobile Robotik at the Vienna University of Technology.

The box is based on Ubuntu 15.04 Vivid and installs ROS Jade accourding to the [wiki](http://wiki.ros.org/jade/Installation/Ubuntu). It will allow virtual box to use all your hosts cores and half of the memory. The gui is currently enabled, but can be easily turned of via the `v.gui` config in the Vagrant file.

Your current ssh agent is forwarded to the box, which allows you to access server and repositories associated with your public key. 

# But how?
- Install [vagrant]()
- Clone this repository: `git clone https://github.com/sepal/ros_devel.git`
- Open a shell and navigate to the vagrant folder: `cd vagrant`.
- Start the vagrant box: `vagrant up`
- Login and start doing awesome stuff: `vagrant ssh`
