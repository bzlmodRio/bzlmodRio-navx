import argparse
import os

from bazelrio_gentool.clean_existing_version import clean_existing_version
from bazelrio_gentool.cli import GenericCliArgs, add_generic_cli
from bazelrio_gentool.generate_module_project_files import (
    create_default_mandatory_settings,
    generate_module_project_files,
)
from get_navx_dependencies import get_navx_dependencies

# from bazelrio_gentool.generate_group import generate_private_raw_libraries


def main():
    SCRIPT_DIR = os.environ["BUILD_WORKSPACE_DIRECTORY"]
    REPO_DIR = os.path.join(SCRIPT_DIR, "..")
    os.path.join(REPO_DIR, "dependencies")

    parser = argparse.ArgumentParser()
    add_generic_cli(parser)
    parser.add_argument("--use_local_allwpilib", action="store_true")
    parser.add_argument("--use_local_opencv", action="store_true")
    parser.add_argument("--use_local_ni", action="store_true")
    args = parser.parse_args()

    group = get_navx_dependencies(
        use_local_allwpilib=args.use_local_allwpilib,
        use_local_opencv=args.use_local_opencv,
        use_local_ni=args.use_local_ni,
    )

    mandatory_dependencies = create_default_mandatory_settings(GenericCliArgs(args))

    clean_existing_version(REPO_DIR, extra_dir_blacklist=["navx"])
    generate_module_project_files(
        REPO_DIR,
        group,
        mandatory_dependencies=mandatory_dependencies,
        include_windows_arm_compiler=False,
    )
    # generate_private_raw_libraries(output_dir, group)


if __name__ == "__main__":
    """
    bazel run @bzlmodrio-navx//generate:generate_navx
    """
    main()
