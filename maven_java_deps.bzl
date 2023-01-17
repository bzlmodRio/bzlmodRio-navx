def get_navx_java_dependencies():
    artifacts = [
        "com.kauailabs.navx.frc:navx-frc-java:2023.0.1",
    ]
    repositories = [
        "https://repo1.maven.org/maven2",
        "https://frcmaven.wpi.edu/release",
        "https://dev.studica.com/maven/release/2023",
    ]

    return artifacts, repositories
