
#include <iostream>
#include <thread>         
#include <chrono>     
#include "AHRS.h"    

int main() {
    std::cout << "Hello World" << std::endl;

    AHRS imu{frc::SPI::Port::kMXP};

    std::cout << "Running  some loops" << std::endl;
    for (int i = 0; i < 500; ++i) {
        std::this_thread::sleep_for(std::chrono::microseconds(20));
    }
    std::cout << "Done" << std::endl;

    return 0;
}