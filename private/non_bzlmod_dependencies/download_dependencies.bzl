load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def download_dependencies():
    # JVM External
    RULES_JVM_EXTERNAL_TAG = "4.2"
    RULES_JVM_EXTERNAL_SHA = "cd1a77b7b02e8e008439ca76fd34f5b07aecb8c752961f9640dea15e9e5ba1ca"
    http_archive(
        name = "rules_jvm_external",
        sha256 = RULES_JVM_EXTERNAL_SHA,
        strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
        url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
    )

    # Python, for gentool
    http_archive(
        name = "rules_python",
        sha256 = "497ca47374f48c8b067d786b512ac10a276211810f4a580178ee9b9ad139323a",
        strip_prefix = "rules_python-0.16.1",
        url = "https://github.com/bazelbuild/rules_python/archive/refs/tags/0.16.1.tar.gz",
    )

    # Project Generator
    native.local_repository(
        name = "bzlmodrio-gentool",
        path = "../../gentool",
    )

    # Bazelrio Rules
    native.local_repository(
        name = "rules_bazelrio",
        path = "../../bzlmodRio-rules_bazelrio",
    )

    # Roborio Toolchain
    native.local_repository(
        name = "rules_roborio_toolchain",
        path = "../../rules_roborio_toolchain",
    )

    ########################
    # bzlmodRio dependencies

    # allwpilib
    native.local_repository(
        name = "allwpilib",
        path = "../../bzlmodRio-allwpilib",
    )

    # wpi-opencv
    native.local_repository(
        name = "wpi-opencv",
        path = "../../bzlmodRio-opencv",
    )

    # bzlmodrio-ni
    native.local_repository(
        name = "bzlmodrio-ni",
        path = "../../bzlmodRio-ni",
    )

    ########################
