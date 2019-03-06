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
