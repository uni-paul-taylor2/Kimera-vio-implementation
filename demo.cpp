//chatgpt generated code to tweak later on

#include <gflags/gflags.h>
#include <glog/logging.h>
#include <kimera-vio/KimeraVioApp.h>
#include <kimera-vio/pipeline/Pipeline.h>

#include <string>

// Define command-line flags
DEFINE_string(vio_params, "", "Path to the VIO parameters YAML file.");
DEFINE_string(dataset_path, "", "Path to the dataset directory.");

// Main function
int main(int argc, char* argv[]) {
    // Initialize Google Logging
    google::InitGoogleLogging(argv[0]);

    // Parse command-line arguments
    gflags::ParseCommandLineFlags(&argc, &argv, true);

    // Check if required flags are set
    if (FLAGS_vio_params.empty() || FLAGS_dataset_path.empty()) {
        LOG(ERROR) << "Usage: " << argv[0]
                   << " --vio_params=/path/to/VioParams.yaml"
                   << " --dataset_path=/path/to/dataset/";
        return 1;
    }

    // Create and configure the Kimera-VIO pipeline
    VIO::Pipeline::UniquePtr vio_pipeline = VIO::make_unique<VIO::Pipeline>();

    try {
        // Initialize the Kimera-VIO pipeline
        vio_pipeline->initialize(FLAGS_vio_params, FLAGS_dataset_path);

        // Run the pipeline
        vio_pipeline->run();
    } catch (const std::exception& e) {
        LOG(ERROR) << "Exception during pipeline execution: " << e.what();
        return 1;
    }

    LOG(INFO) << "Kimera-VIO demo finished successfully.";
    return 0;
}
