function ros_eowyn() {
    export ROS_MASTER_URI=http://192.168.1.8:11311
    export ROS_IP=$(hostname -I)
    export ROS_HOSTNAME=$(hostname -I)

    env | grep ROS_MASTER_URI
    env | grep ROS_IP
    env | grep ROS_HOSTNAME
}

function ros_local() {
    export ROS_MASTER_URI=http://localhost:11311
    export ROS_IP=$(hostname -I)
    export ROS_HOSTNAME=$(hostname -I)

    env | grep ROS_MASTER_URI
    env | grep ROS_IP
    env | grep ROS_HOSTNAME
}

alias send_to_plane="git push && hub pull-request -b plane -m"

function drop_bomb() {
    rosservice call /arm_bomb
    sleep 0.5
    rosservice call /actuate_drop_bomb
}

function gpio_drop(){
    gpio mode 0 out
    gpio write 0 0
    sleep 0.12
    gpio write 0 1
}
