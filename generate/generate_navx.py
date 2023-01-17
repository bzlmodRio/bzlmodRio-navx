
import sys
import os

from get_navx_dependencies import get_navx_dependencies
from bazelrio_gentool.generate_module_project_files import generate_module_project_files
from bazelrio_gentool.generate_vendordep_raw_libs import generate_vendordep_raw_libs
from bazelrio_gentool.clean_existing_version import clean_existing_version
from bazelrio_gentool.generate_module_project_files import create_default_mandatory_settings


def main():
    SCRIPT_DIR = os.path.dirname(os.path.realpath(__file__))
    REPO_DIR = os.path.join(SCRIPT_DIR, "..")
    output_dir = os.path.join(REPO_DIR, "dependencies")
    
    group = get_navx_dependencies(use_local_allwpilib=True, use_local_opencv=True, use_local_ni=True)

    mandetory_dependencies = create_default_mandatory_settings(
        use_local_roborio=False,
        use_local_bazelrio=False,
        use_local_bzlmodrio_gentool=True)

    # clean_existing_version(REPO_DIR)
    generate_module_project_files(REPO_DIR, group, mandetory_dependencies=mandetory_dependencies)
    generate_vendordep_raw_libs(REPO_DIR, group)
    
if __name__ == "__main__":
    """
    bazel run @navx//generate:generate_navx
    """
    main()
