//I might delete this highkey
//g++ -I/usr/local/include/gtsam -I/usr/local/include/gtsam/3rdparty/Eigen demo_gtsam.cpp -o demo_gtsam.o

#include <Eigen/Core>
#include <gtsam/global_includes.h>
#include <gtsam/geometry/Pose3.h>
#include <gtsam/inference/Symbol.h>
#include <gtsam/geometry/Point3.h>
#include <gtsam/geometry/Rot3.h>
#include <iostream>

using namespace std;
using namespace gtsam;

int main() {
    cout<<"GTSAM Eigen: "<<GTSAM_EIGEN_VERSION_WORLD<<'.'<<GTSAM_EIGEN_VERSION_MAJOR<<".0"<<endl;
    cout<<"Eigen: "<<EIGEN_WORLD_VERSION<<'.'<<EIGEN_MAJOR_VERSION<<'.'<<EIGEN_MINOR_VERSION<<endl;
    
    Point3 translation(1.0, 2.0, 3.0);  // 3D translation (x, y, z)
    Rot3 rotation = Rot3::RzRyRx(0.0, 0.0, 0.0);  // No rotation (identity matrix)

    Pose3 pose(rotation, translation);
    //cout << "Original Pose: " << pose << endl;
    
    Pose3 transformedPose = pose.compose(Pose3(Rot3(), Point3(1.0, 0.0, 0.0)));
    //cout << "Transformed Pose: " << transformedPose << endl;

    return 0;
}
