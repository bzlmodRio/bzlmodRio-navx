load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

filegroup_all = """filegroup(
     name = "all",
     srcs = glob(["**"]),
     visibility = ["//visibility:public"],
 )
 """

cc_library_headers = """cc_library(
    name = "headers",
    hdrs = glob(["**"]),
    includes = ["."],
    visibility = ["//visibility:public"],
)
"""

cc_library_sources = """filegroup(
     name = "sources",
     srcs = glob(["**"]),
     visibility = ["//visibility:public"],
 )
 """

cc_library_static = """

cc_library(
    name = "static_libs",
    srcs = glob(["**/*.lib", "**/*.a"]),
    visibility = ["//visibility:public"],
)
"""

cc_library_shared = """
static_srcs = glob(["**/*.lib", "**/*.a"], exclude=["**/*jni.lib"])
shared_srcs = glob(["**/*.dll", "**/*.so*", "**/*.dylib"], exclude=["**/*jni.dll", "**/*jni.so", "**/*.so.debug", "**/libopencv_java*.dylib"])
shared_jni_srcs = glob(["**/*jni.dll", "**/*jni.so*", "**/*.jni.dylib", "**/libopencv_java*.dylib"], exclude=["**/*.so.debug"])

cc_library(
    name = "static_libs",
    srcs = static_srcs,
    visibility = ["//visibility:public"],
)

cc_library(
    name = "shared_libs",
    srcs = shared_srcs,
    visibility = ["//visibility:public"],
    deps = [
        ":static_libs",
    ]
)

cc_library(
    name = "shared_jni_libs",
    srcs = shared_jni_srcs,
    visibility = ["//visibility:public"],
)
"""

def __setup_navx_cpp_dependencies(mctx):
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_headers",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.1/navx-frc-cpp-2023.0.1-headers.zip",
        sha256 = "306be67e736de2f85dc922f43f1ec34752767cf905befe2eb7cde680bbaabecb",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_sources",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.1/navx-frc-cpp-2023.0.1-sources.zip",
        sha256 = "18a4fb8f2a14787f64bb33c1ed5be10bb5c4be72e7c607faa3bb709851c251a5",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.1/navx-frc-cpp-2023.0.1-linuxathena.zip",
        sha256 = "8acf40c76f2440711b25b0762eec0008f2b8810ae4a9423c3c1ca57685ac6585",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.1/navx-frc-cpp-2023.0.1-windowsx86-64.zip",
        sha256 = "780db9926254ea8263f539ca326ea38af935eb39d590c74ddeabd18edd5148d5",
        build_file_content = cc_library_shared,
    )

def setup_legacy_navx_cpp_dependencies():
    __setup_navx_cpp_dependencies(None)

setup_navx_cpp_dependencies = module_extension(
    __setup_navx_cpp_dependencies,
)
