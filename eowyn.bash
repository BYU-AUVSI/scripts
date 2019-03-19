function ros_eowyn() {
    export ROS_MASTER_URI=http://192.168.1.8:11311
    export ROS_IP=$(hostname -I)

    env | grep ROS_MASTER_URI
    env | grep ROS_IP
}

function ros_local() {
    export ROS_MASTER_URI=http://localhost:11311
    export ROS_IP=$(hostname -I)

    env | grep ROS_MASTER_URI
    env | grep ROS_IP
}

alias send_to_plane="git push && hub pull-request -b plane -m" 
