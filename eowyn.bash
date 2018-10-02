function ros_eowyn() {
    export ROS_MASTER_URI=http://192.168.1.8:11311
    export ROS_IP=$(hostname -I)

    env | grep ROS_MASTER_URI
    env | grep ROS_IP
}
