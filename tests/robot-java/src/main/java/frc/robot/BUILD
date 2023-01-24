load("@rules_bazelrio//:robot_rules.bzl", "robot_java_binary")

java_library(
    name = "robot-lib",
    srcs = glob(["*.java"]),
    visibility = ["//visibility:public"],
    deps = [
        "//robot-java/src/main/java/frc/robot/commands",
        "//robot-java/src/main/java/frc/robot/subsystems",
        "@allwpilib//libraries/java/wpilibNewCommands",
        "@allwpilib//libraries/java/wpilibj",
        "@allwpilib//libraries/java/wpimath",
    ],
)

robot_java_binary(
    name = "robot",
    halsim_deps = ["@allwpilib//libraries/cpp/halsim_gui:halsim_gui"],
    jvm_flags = [
        "-Djava.library.path=.",
    ],
    main_class = "frc.robot.Main",
    tags = ["no-sandbox"],
    team_number = 9999,
    visibility = ["//visibility:public"],
    runtime_deps = [
        ":robot-lib",
    ],
)
