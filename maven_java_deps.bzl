load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_navx_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_kauailabs_navx_frc_navx_frc_java",
        artifact = "com.kauailabs.navx.frc:navx-frc-java:2023.0.1",
        artifact_sha256 = "f704e31153cbf87acd5ee20f7f764e14c5abef74bcdb5e810597c3c9629fb0ca",
        server_urls = ["https://dev.studica.com/maven/release/2023"],
    )

def setup_legacy_bzlmodrio_navx_java_dependencies():
    __setup_bzlmodrio_navx_java_dependencies(None)

setup_bzlmodrio_navx_java_dependencies = module_extension(
    __setup_bzlmodrio_navx_java_dependencies,
)
