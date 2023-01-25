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

    # Bazelrio Rules
    http_archive(
        name = "rules_bazelrio",
        sha256 = "5bcea84860f14b03767cbc4f3d16173502fe60173968da6715fa11b1aedb8fe3",
        strip_prefix = "bzlmodRio-rules_bazelrio-4908451bfa5a04f6b79a6181ad95eeb0eb4e69d3",
        url = "https://github.com/bzlmodRio/bzlmodRio-rules_bazelrio/archive/4908451bfa5a04f6b79a6181ad95eeb0eb4e69d3.tar.gz",
    )

    # Roborio Toolchain
    http_archive(
        name = "rules_roborio_toolchain",
        sha256 = "c83f40ec9bafba45c726062e3c7982f0301fbede9aa46ac25a9900642c13ca66",
        strip_prefix = "rules_roborio_toolchain-8668e36043c7489a9669a9281f7024272b36d583",
        url = "https://github.com/bzlmodRio/rules_roborio_toolchain/archive/8668e36043c7489a9669a9281f7024272b36d583.tar.gz",
    )

    ########################
    # bzlmodRio dependencies

    # bzlmodrio-allwpilib
    http_archive(
        name = "bzlmodrio-allwpilib",
        sha256 = "8f402290666f837c99ff985908b05223b4b2f5d32ab2f552308ca3b753856a41",
        strip_prefix = "bzlmodRio-allwpilib-38742ec2cc6e2d05da155b74772edfe2102f6693",
        url = "https://github.com/bzlmodRio/bzlmodRio-allwpilib/archive/38742ec2cc6e2d05da155b74772edfe2102f6693.tar.gz",
    )

    # bzlmodrio-opencv
    http_archive(
        name = "bzlmodrio-opencv",
        sha256 = "6f76e7a95a63d4859355d44934f6cd5663cc0f0bdc769c657c25e59e1ba5a22f",
        strip_prefix = "bzlmodRio-opencv-130376f5cb63d661990e3d22aa60a7369e34942f",
        url = "https://github.com/bzlmodRio/bzlmodRio-opencv/archive/130376f5cb63d661990e3d22aa60a7369e34942f.tar.gz",
    )

    # bzlmodrio-ni
    http_archive(
        name = "bzlmodrio-ni",
        sha256 = "53234e9338a215b9ea96e4e84bd1695ac2caefe18effcc9ece1ea5f48003b8b5",
        strip_prefix = "bzlmodRio-ni-dd24e2d211cff83e9d21b88bbc0b80de98aac29f",
        url = "https://github.com/bzlmodRio/bzlmodRio-ni/archive/dd24e2d211cff83e9d21b88bbc0b80de98aac29f.tar.gz",
    )

    ########################
