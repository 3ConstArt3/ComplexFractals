/**
 * Visualizes complex roots on screen by projecting the
 * complex plane into 2D canvas coordinates.
 */
class RootVisualizer {

  float planeMin;
  float planeMax;

  RootVisualizer(float planeMin, float planeMax) {
    this.planeMin = planeMin;
    this.planeMax = planeMax;
  }

  /**
   * Draws the full list of colored roots.
   *
   * @param roots Collection of colored roots.
   */
  void render(ArrayList<ColoredRoot> roots) {

    if (roots == null) return;

    strokeWeight(2);

    for (ColoredRoot cr : roots) {
      if (cr == null || cr.root == null) continue;

      float x = map(cr.root.real, planeMin, planeMax, 0, width);
      float y = map(cr.root.imaginary, planeMax, planeMin, 0, height);

      stroke(cr.col);
      point(x, y);
    }
  }
}
