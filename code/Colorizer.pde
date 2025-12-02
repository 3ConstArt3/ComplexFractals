/**
 * Handles color generation for root visualization,
 * providing smooth rainbow gradients.
 */
class Colorizer {

  /**
   * Converts a complex root into a smooth rainbow HSB color.
   */
  color rainbowFor(Complex z) {

    float angle = atan2(z.imaginary, z.real);
    float hue = degrees(angle);
    if (hue < 0) hue += 360;

    float n = 2;
    float magnitude = sqrt(pow(z.real, n) + pow(z.imaginary, n));
    float brightness = 54 + 45 * sin(magnitude * 4);

    return color(hue, 90, brightness, 100);
  }
}
