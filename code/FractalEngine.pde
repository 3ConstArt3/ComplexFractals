/**
 * Manages incremental root computation using batches,
 * similar to the asynchronous batching in your React code.
 */
class FractalEngine {

  Complex[][] coefficientSets;
  int setIndex = 0;
  int batchSize;
  int maxCombinations;

  boolean generating = false;

  ArrayList<ColoredRoot> rootList = new ArrayList<ColoredRoot>();
  RootVisualizer visualizer;

  FractalEngine(int batchSize, int maxCombinations, RootVisualizer visualizer) {
    this.batchSize = batchSize;
    this.maxCombinations = maxCombinations;
    this.visualizer = visualizer;
  }

  /**
   * Begins computing polynomial roots for the given coefficient set.
   */
  void start(Complex[] choices, int degree) {

    rootList.clear();
    setIndex = 0;

    CoefficientGenerator generator = new CoefficientGenerator();
    coefficientSets = generator.generateAll(choices, degree);

    if (coefficientSets.length > maxCombinations) {
      generating = false;
      println("Too many combinations: " + coefficientSets.length);
      return;
    }

    generating = true;
  }


  /**
   * Processes the next slice of coefficient sets.
   */
  void step() {

    if (!generating) return;

    int end = min(setIndex + batchSize, coefficientSets.length);
    Colorizer colorizer = new Colorizer();
    PolynomialMath polynomialMath = new PolynomialMath();

    for (int i = setIndex; i < end; i++) {

      Complex[] poly = coefficientSets[i];
      Complex[] roots = polynomialMath.findAllRoots(poly);

      for (Complex r : roots) {
        rootList.add(new ColoredRoot(r, colorizer.rainbowFor(r)));
      }
    }

    setIndex = end;

    if (setIndex >= coefficientSets.length) {
      generating = false;
      println("Root generation complete!");
    }
  }


  /**
   * Draws all currently known roots.
   */
  void render() {
    visualizer.render(rootList);
  }
}
