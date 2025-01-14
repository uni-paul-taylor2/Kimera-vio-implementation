//g++ demo_gtsam.cpp -o demo_gtsam.o

#include <gtsam/geometry/Pose3.h>
#include <gtsam/inference/Symbol.h>
#include <gtsam/geometry/Point3.h>
#include <gtsam/geometry/Rot3.h>
#include <iostream>

using namespace std;
using namespace gtsam;

int main() {
    // Define a Pose3 object (3D pose: translation and rotation)
    Point3 translation(1.0, 2.0, 3.0);  // 3D translation (x, y, z)
    Rot3 rotation = Rot3::RzRyRx(0.0, 0.0, 0.0);  // No rotation (identity matrix)

    // Create the pose (rotation + translation)
    Pose3 pose(rotation, translation);

    // Output the original pose
    cout << "Original Pose: " << pose << endl;

    // Apply a translation to the pose (example transformation)
    Pose3 transformedPose = pose.compose(Pose3(Rot3(), Point3(1.0, 0.0, 0.0)));

    // Output the transformed pose
    cout << "Transformed Pose: " << transformedPose << endl;

    return 0;
}
