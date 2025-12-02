/**
 * Generates all coefficient combinations for a given polynomial degree.
 */
class CoefficientGenerator {

  /**
   * Builds all possible polynomial coefficient sets.
   *
   * @param choices   Allowed coefficients for each term.
   * @param degree    Polynomial degree.
   */
  Complex[][] generateAll(Complex[] choices, int degree) {

    if (choices == null)
      throw new IllegalArgumentException("Coefficient choices cannot be null.");

    int size = degree + 1;
    ArrayList<Complex[]> output = new ArrayList<Complex[]>();

    Complex[] buffer = new Complex[size];
    generateRecursive(choices, buffer, 0, output);

    return output.toArray(new Complex[output.size()][]);
  }


  /** Internal recursive generator. */
  private void generateRecursive(
    Complex[] choices,
    Complex[] buffer,
    int index,
    ArrayList<Complex[]> out
  ) {
    if (index == buffer.length) {
      Complex[] copy = new Complex[buffer.length];
      for (int i = 0; i < buffer.length; i++)
        copy[i] = buffer[i];
      out.add(copy);
      return;
    }

    for (Complex c : choices) {
      if (c == null)
        throw new IllegalArgumentException("Coefficient choice cannot be null.");

      buffer[index] = c;
      generateRecursive(choices, buffer, index + 1, out);
    }
  }
}
