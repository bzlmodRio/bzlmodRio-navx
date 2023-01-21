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
    http_archive(
        name = "bzlmodrio-gentool",
        sha256 = "91dbeb541a6151eab3f4dfa37318b81e3f4fa964e45ebea48665cb2b3e471353",
        strip_prefix = "gentool-dummy_version",
        url = "https://github.com/bzlmodRio/gentool/archive/refs/heads/dummy_version.zip",
    )

    # Bazelrio Rules
    http_archive(
        name = "rules_bazelrio",
        sha256 = "a8e997def42472dd2f31cd90b855c0aeab93aabe1b436cd48f4e1efdd760f01c",
        strip_prefix = "bzlmodRio-rules_bazelrio-bd9c8375bf4f5a91d08cbf64e359c0b30aaf7433",
        url = "https://github.com/bzlmodRio/bzlmodRio-rules_bazelrio/archive/bd9c8375bf4f5a91d08cbf64e359c0b30aaf7433.zip",
    )

    # Roborio Toolchain
    http_archive(
        name = "rules_roborio_toolchain",
        sha256 = "c8a6fc0acac4a08aa884b59d13af9c3da010a4eed416ee10ccc05c73b9753deb",
        strip_prefix = "rules_roborio_toolchain-8668e36043c7489a9669a9281f7024272b36d583",
        url = "https://github.com/bzlmodRio/rules_roborio_toolchain/archive/8668e36043c7489a9669a9281f7024272b36d583.zip",
    )

    ########################
    # bzlmodRio dependencies

    # allwpilib
    http_archive(
        name = "allwpilib",
        sha256 = "d4d8bccb48408d367f3120ec1820fa5452d0eaf0dd053adb18c9e50ab44d2410",
        strip_prefix = "bzlmodRio-allwpilib-458c77738bee96002ba6edda0117072bc32c4dd1",
        url = "https://github.com/bzlmodRio/bzlmodRio-allwpilib/archive/458c77738bee96002ba6edda0117072bc32c4dd1.tar.gz",
    )

    # wpi-opencv
    http_archive(
        name = "wpi-opencv",
        sha256 = "4b0b9d708cafb597fa1b7b1730a653c59e03c8f71d58d9474fcce329a112bd61",
        strip_prefix = "bzlmodRio-opencv-4fc2007fbdb70ec71c40a94ca2b9eaf0cadb5bcb",
        url = "https://github.com/bzlmodRio/bzlmodRio-opencv/archive/4fc2007fbdb70ec71c40a94ca2b9eaf0cadb5bcb.tar.gz",
    )

    # bzlmodrio-ni
    http_archive(
        name = "bzlmodrio-ni",
        sha256 = "54ed8d2e0d2c5a76c16eb312b48cef60c2de451910def5e10b7c8e4a8e80f89a",
        strip_prefix = "bzlmodRio-ni-cc24faa330eb82f05fe30c7df030d59cfa3cfd06",
        url = "https://github.com/bzlmodRio/bzlmodRio-ni/archive/cc24faa330eb82f05fe30c7df030d59cfa3cfd06.tar.gz",
    )

    ########################
