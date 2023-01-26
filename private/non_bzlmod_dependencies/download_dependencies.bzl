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
        sha256 = "27d38c924303eaf27bbcbe1dd439638b8dae90ee09f56bcebf787a42f6f9001a",
        strip_prefix = "rules_roborio_toolchain-2c112065b211b8d9f4449ab518f89a9678041e3f",
        url = "https://github.com/bzlmodRio/rules_roborio_toolchain/archive/2c112065b211b8d9f4449ab518f89a9678041e3f.tar.gz",
    )

    ########################
    # bzlmodRio dependencies

    # bzlmodrio-allwpilib
    http_archive(
        name = "bzlmodrio-allwpilib",
        sha256 = "e35e8cb87480daa93db40620069aa50917df32d782b3545ce8a8e95b2078b371",
        strip_prefix = "bzlmodRio-allwpilib-864715ba7fbbfa8ffd820693d11aa93342b39f2e",
        url = "https://github.com/bzlmodRio/bzlmodRio-allwpilib/archive/864715ba7fbbfa8ffd820693d11aa93342b39f2e.tar.gz",
    )

    # bzlmodrio-opencv
    http_archive(
        name = "bzlmodrio-opencv",
        sha256 = "6ae0267890361270e36f725523cbec9553bc6b4178bbfc8b7643e086b3aa88f7",
        strip_prefix = "bzlmodRio-opencv-c33a5574d0ee8360022487d8a2b7a71097531beb",
        url = "https://github.com/bzlmodRio/bzlmodRio-opencv/archive/c33a5574d0ee8360022487d8a2b7a71097531beb.tar.gz",
    )

    # bzlmodrio-ni
    http_archive(
        name = "bzlmodrio-ni",
        sha256 = "725397ef1d71fabb0b6e54ce13b81dc2072b428a526650a5f8872b3b7e17509e",
        strip_prefix = "bzlmodRio-ni-ed054590909fb98adca10645f37b7a665f1a78f2",
        url = "https://github.com/bzlmodRio/bzlmodRio-ni/archive/ed054590909fb98adca10645f37b7a665f1a78f2.tar.gz",
    )

    ########################
