int polynomialDegree = 12;
int batchSize = 40;
int maxCombinations = 100000;

Complex[] coefficientChoices;

FractalEngine fractal;
RootVisualizer visual;

// =======================================================================
// SETUP
// =======================================================================
void setup() {

  size(900, 900, P2D);
  colorMode(HSB, 360, 100, 100, 100);
  smooth(8);

  coefficientChoices = new Complex[] {
    new Complex(-1, 0),
    new Complex(1, 0)
  };

  visual = new RootVisualizer(-2, 2);
  fractal = new FractalEngine(batchSize, maxCombinations, visual);
  fractal.start(coefficientChoices, polynomialDegree);
}


// =======================================================================
// DRAW
// =======================================================================
void draw() {

  background(0);

  fractal.step();
  fractal.render();
}
