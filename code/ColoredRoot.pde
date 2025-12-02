/**
 * ColoredRoot
 *
 * Small data container that pairs a Complex root with a drawing color.
 * Used by FractalEngine and RootVisualizer.
 */
class ColoredRoot {

  /** The complex root value (must be non-null). */
  final Complex root;

  /** HSB/RGB drawing color (Processing color type). */
  final color col;

  /**
   * Construct a ColoredRoot pairing a complex root with a color.
   *
   * @param root Non-null Complex root.
   * @param col  Processing color (HSB or RGB, depending on colorMode).
   * @throws IllegalArgumentException if root is null.
   */
  ColoredRoot(Complex root, color col) {
    if (root == null) {
      throw new IllegalArgumentException("ColoredRoot: root cannot be null.");
    }
    this.root = root.copy();  // defensive copy to avoid unintended external mutation
    this.col = col;
  }

  /**
   * Human-friendly representation helpful for debugging.
   *
   * @return "(real, imag) @ color"
   */
  @Override
  public String toString() {
    return "(" + root.real + ", " + root.imaginary + ") @ " + col;
  }
}
