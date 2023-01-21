load("@rules_bazelrio//:robot_rules.bzl", "robot_cc_binary")

cc_library(
    name = "robot-lib",
    srcs = [
        "main.cpp",
        "robot.cpp",
    ],
    hdrs = ["robot.hpp"],
    deps = [
        "//robot-cpp/commands",
        "//robot-cpp/subsystems",
        "@allwpilib//dependencies/cpp/cameraserver",
    ],
)

cc_library(
    name = "robot-main",
    srcs = ["main.cpp"],
    deps = [
        "robot-lib",
    ],
)

robot_cc_binary(
    name = "robot",
    halsim_deps = ["@allwpilib//dependencies/cpp/halsim_gui:halsim_gui"],
    lib_name = "robot-main",
    team_number = 9999,
)
