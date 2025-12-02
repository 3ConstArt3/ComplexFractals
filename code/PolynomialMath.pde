/**
 * Contains all mathematical operations for complex polynomials:
 *  - complex addition / multiplication
 *  - polynomial evaluation
 *  - polynomial derivative
 *  - Newton–Raphson root solving
 */
class PolynomialMath {

  /** Adds two complex numbers. */
  Complex add(Complex a, Complex b) {
    return new Complex(a.real + b.real, a.imaginary + b.imaginary);
  }

  /** Multiplies two complex numbers. */
  Complex multiply(Complex a, Complex b) {
    return new Complex(
      a.real * b.real - a.imaginary * b.imaginary,
      a.real * b.imaginary + a.imaginary * b.real
    );
  }

  /** Returns the magnitude of a complex number. */
  float magnitude(Complex c) {
    return sqrt(c.real * c.real + c.imaginary * c.imaginary);
  }


  /**
   * Evaluates a polynomial at a complex point.
   *
   * @param coefficients  Complex polynomial coefficients.
   * @param z             Point to evaluate.
   * @return f(z)
   */
  Complex evaluate(Complex[] coefficients, Complex z) {

    if (coefficients == null)
      throw new IllegalArgumentException("Polynomial coefficients cannot be null.");

    Complex sum = new Complex(0, 0);
    Complex currentPower = new Complex(1, 0);

    for (Complex c : coefficients) {
      if (c == null)
        throw new IllegalArgumentException("Polynomial coefficient cannot be null.");

      sum = add(sum, multiply(c, currentPower));
      currentPower = multiply(currentPower, z);
    }

    return sum;
  }


  /**
   * Computes the first derivative of a polynomial.
   */
  Complex[] derivative(Complex[] coeffs) {

    if (coeffs == null)
      throw new IllegalArgumentException("Polynomial coefficients cannot be null.");

    if (coeffs.length <= 1)
      return new Complex[0];

    Complex[] deriv = new Complex[coeffs.length - 1];

    for (int i = 1; i < coeffs.length; i++) {
      Complex c = coeffs[i];
      if (c == null)
        throw new IllegalArgumentException("Coefficient cannot be null.");

      deriv[i - 1] = new Complex(c.real * i, c.imaginary * i);
    }

    return deriv;
  }


  /**
   * Uses Newton–Raphson iteration to approximate a root.
   */
  Complex newtonSolve(Complex[] coeffs, Complex start) {

    if (coeffs == null)
      throw new IllegalArgumentException("Coefficient array cannot be null.");
    if (start == null)
      throw new IllegalArgumentException("Initial guess cannot be null.");

    Complex estimate = start.copy();
    Complex[] deriv = derivative(coeffs);

    for (int i = 0; i < 100; i++) {

      Complex fz = evaluate(coeffs, estimate);
      Complex fpz = evaluate(deriv, estimate);

      float denom = fpz.real * fpz.real + fpz.imaginary * fpz.imaginary;
      if (abs(denom) < 1e-10) return null;

      float deltaRe = (fz.real * fpz.real + fz.imaginary * fpz.imaginary) / denom;
      float deltaIm = (fz.imaginary * fpz.real - fz.real * fpz.imaginary) / denom;

      estimate.real -= deltaRe;
      estimate.imaginary -= deltaIm;

      if (magnitude(fz) < 1e-10) return estimate;
    }
    return estimate;
  }


  /**
   * Attempts to find all unique polynomial roots using rotational initial guesses.
   */
  Complex[] findAllRoots(Complex[] coeffs) {

    if (coeffs == null)
      throw new IllegalArgumentException("Coefficient array cannot be null.");

    int degree = coeffs.length - 1;
    if (degree <= 0) return new Complex[0];

    float radius = 2;
    int guessCount = max(degree * 4, 20);

    ArrayList<Complex> roots = new ArrayList<Complex>();

    for (int i = 0; i < guessCount; i++) {
      float angle = TWO_PI * i / guessCount;

      Complex guess = new Complex(radius * cos(angle), radius * sin(angle));
      Complex rootApprox = newtonSolve(coeffs, guess);

      if (rootApprox != null) {
        boolean isNew = true;

        for (Complex r : roots) {
          if (abs(r.real - rootApprox.real) < 1e-6 &&
              abs(r.imaginary - rootApprox.imaginary) < 1e-6) {
            isNew = false;
            break;
          }
        }

        if (isNew && roots.size() < degree)
          roots.add(rootApprox);
      }
    }

    return roots.toArray(new Complex[roots.size()]);
  }
}
