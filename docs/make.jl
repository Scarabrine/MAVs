using Documenter
makedocs(
doctest=false, clean=true,
format =:html,
authors="Huckleberry Febbo",
assets = ["assets/style.css"],
sitename="MAVs",
pages = [
    "Home" => "index.md",
    "Usage" => [
        "Basic usage" => "tutorials/basic.md",
        "Developing MAVs" => "tutorials/developer.md",
    ],
    "Sensing" => [
        "vehicle_description" => "packages/model/gazebo/vehicle_description/main.md",
        "contact_sensor" => "packages/model/gazebo/contact_sensor/main.md",
    ],
    "Detection" => [
        "obstacle_detector" => "packages/computing/perception/obstacle_detector/main.md",
    ],
    "Vehicle model" => [
        "ros_chrono" => "packages/model/chrono/ros_chrono/main.md",
    ],
    "Planning" => [
        "nloptcontrol_planner" => "packages/computing/planning/nloptcontrol_planner/main.md",
        "mavs_ros_planner" => "packages/computing/planning/mavs_ros_planner/main.md",
    ],
    "Miscellaneous" => [
        "system_shutdown" => "packages/system/system_shutdown.md",
        "data_logging" => "packages/system/data_logging.md",
        "chrono_position_broadcaster" => "packages/model/chrono/chrono_position_broadcaster/main.md",
        "ros_chrono_msgs" => "packages/model/chrono/ros_chrono_msgs/main.md",
        "point_cloud_converter" => "packages/computing/perception/point_cloud_converter.md",
    ],
    "System demos" => [
        "demoI" => "packages/system/demos/demoI.md",
        "demoM" => "packages/system/demos/demoM.md",
        "demoK" => "packages/system/demos/demoK.md",
        "demoZ" => "packages/system/demos/demoZ.md"
    ],
    "Docker" => [
        "Workflow" => "docker/workflow.md",
        "Notes" => "docker/notes.md",
    ],
    "Testing"  => "testing/main.md",
    "Troubleshooting"  => "issues/main.md",
]
)

deploydocs(
    repo="github.com/JuliaMPC/MAVs.git",
)
