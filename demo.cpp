//yes, this demo is entirely sourced from chatgpt, so this isn't near complete yet most likely
#include <opencv2/opencv.hpp>
#include <ros/ros.h>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "kimera_vio_test_node");
    ros::NodeHandle nh;

    // Load an image (change path to your image directory)
    cv::Mat image = cv::imread("/path/to/your/image.png");

    if (image.empty()) {
        ROS_ERROR("Image not found!");
        return -1;
    }

    ROS_INFO("Loaded image with size: %d x %d", image.cols, image.rows);

    // Process the image here (e.g., pass it to Kimera-VIO)
    // Your processing logic...

    ros::spin();
    return 0;
}
