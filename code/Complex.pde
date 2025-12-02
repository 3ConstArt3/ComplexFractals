/**
 * Represents a complex number with real and imaginary components.
 * Supports basic cloning and debugging utilities.
 */
class Complex {

  /** Real part of the complex number. */
  float real;

  /** Imaginary part of the complex number. */
  float imaginary;

  /**
   * Constructs a new complex number.
   *
   * @param real      The real component.
   * @param imaginary The imaginary component.
   */
  Complex(float real, float imaginary) {
    this.real = real;
    this.imaginary = imaginary;
  }

  /**
   * Creates an exact duplicate of this complex number.
   *
   * @return A new Complex containing the same real & imaginary values.
   */
  Complex copy() {
    return new Complex(real, imaginary);
  }

  @Override
  public String toString() {
    return "(" + real + ", " + imaginary + ")";
  }
}
