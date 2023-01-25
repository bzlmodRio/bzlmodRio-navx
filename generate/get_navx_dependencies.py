import sys
import os

from bazelrio_gentool.load_vendordep_dependency import vendordep_dependency
from get_allwpilib_dependencies import get_allwpilib_dependencies
from bazelrio_gentool.deps.dependency_container import (
    DependencyContainer,
    ModuleDependency,
)


def get_navx_dependencies(
    use_local_allwpilib=False, use_local_opencv=False, use_local_ni=False
):
    SCRIPT_DIR = os.path.dirname(os.path.realpath(__file__))
    group = vendordep_dependency(
        "bzlmodrio-navx",
        os.path.join(SCRIPT_DIR, f"vendor_dep.json"),
        year=2023,
        fail_on_hash_miss=False,
        has_static_libraries=True,
    )

    allwpilib_dependency = ModuleDependency(
        get_allwpilib_dependencies(
            use_local_opencv=use_local_opencv, use_local_ni=use_local_ni
        ),
        use_local_version=use_local_allwpilib,
        local_rel_folder="../../bzlmodRio-allwpilib",
        remote_repo="bzlmodRio-allwpilib",
    )
    group.add_module_dependency(allwpilib_dependency)

    return group
