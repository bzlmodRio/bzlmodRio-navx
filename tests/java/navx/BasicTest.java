
package bazelrio_test;

import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;

import org.junit.jupiter.api.Test;

import com.kauailabs.navx.frc.AHRS;

class BasicTest {
  @Test
  void basicTest() {
    AHRS imu = new AHRS();
  }
}
