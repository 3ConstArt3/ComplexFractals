# ComplexFractals

**ComplexFractals** is a creative-coding project that transforms pure mathematics into vivid, generative artworks. It dives into the dynamic world of complex numbers - not just the familiar Mandelbrot and Julia sets, but the broader and far more unpredictable territory of **Littlewood polynomials** and custom iterative functions. The goal here is simple: take the invisible logic of complex dynamics and let it bloom into geometry, color, movement, and structure. Every render becomes a small universe - delicate, chaotic, alien, or unexpectedly harmonious - shaped entirely by the numbers you feed it.

---

## 📑 What’s Inside

All core functionality lives in the `/code` directory and is written in **Processing (Java)**. Each pixel on the screen represents a complex number that is iterated through a chosen function. The outcome of that iteration - whether the point diverges, converges, oscillates, or behaves strangely - determines its final color. You are free to control everything: the coefficients of the polynomial, the number of iterations, the zoom window inside the complex plane, and the color mapping itself. Small changes often produce dramatic visual shifts, so exploring different configurations quickly becomes an artistic journey as much as a mathematical one. This architecture gives rise to a huge range of emergent patterns - from fluid, swirling textures to sharply branching structures reminiscent of fractals, but with far more expressive possibilities.

---

## 🛠️ Getting Started

To run the project, you’ll need **Processing (Java mode)** installed on your system. Once you have it, simply clone or download the repository and open the main `.pde` file. Processing handles everything else - it’s lightweight, cross-platform, and easy to set up.

---

## ▶️ Running the Project

Launch Processing, open the sketch, adjust whatever parameters inspire you, and press **Run**.  
Immediately, a complex-dynamics canvas appears, alive with mathematical behavior.  

You can experiment with:
- the polynomial’s coefficients,  
- iteration depth,  
- zoom and pan settings,  
- and any color palette or shading style you feel like trying.

Processing also allows snapshot and animation export, enabling you to create wallpapers, posters, motion loops, or high-resolution prints with minimal effort.

---

## 🔧 What You Can Tweak / Explore

ComplexFractals is built to be explored. Almost every parameter can be pushed, stretched, or transformed, giving you a playground where mathematics and creativity meet. Here are a few **concrete examples** of how you might configure core parameters in a Processing sketch, to help you begin experimenting without digging through every part of the code.

### **Polynomial & Function Design**  
You’re not locked into the standard $z_{n+1} = z_n^2 + c$. You can define your own polynomial or hybrid expression. Even tiny coefficient changes, can alter the entire global structure of the render, revealing strange attractors, spiraling fields, or beautifully organized chaos.

```pde
// Example: define a custom polynomial (e.g. Littlewood-style)  
// P(z) = a0 + a1·z + a2·z^2 + a3·z^3  
float[] coeffs = { -0.5, 1.0, 0.0, 0.7 };  // just an example set of coefficients  

Complex applyPolynomial(Complex z, float[] c) {  
  Complex sum = new Complex(c[0], 0);  
  Complex term = new Complex(1, 0);  
  for (int i = 1; i < c.length; i++) {  
    term = term.multiply(z);  
    sum = sum.add(term.multiply(c[i]));  
  }  
  return sum;  
}
```

### **The Viewport of the Complex Plane**  
By adjusting real and imaginary bounds, zooming into microstructures, or shifting your view across the plane, you uncover entirely new visual ecosystems. Deep zooming often reveals internal patterns that weren’t visible before.

```pde
// Example: adjusting viewport + resolution  
int WIDTH  = 800; 
int HEIGHT = 800;  

// define complex-plane bounds  
float xmin = -2.0;  
float xmax =  2.0;  
float ymin = -2.0;  
float ymax =  2.0;
```

### **Iteration Behavior & Escape Logic**  
Changing the iteration limit or the criteria that determine when a point “escapes” will dramatically influence the final texture of the image. Higher iteration counts produce more detail but require more computation - a classic tradeoff in fractal exploration.

```pde
// Example: iteration limit and escape threshold  
int maxIterations = 1000;  
float escapeRadius  = 2.0;  // if |z| > escapeRadius, consider the point escaped
```

### **Color Mapping**  
Color gives emotional tone to your fractal. Whether you choose smooth gradients, harsh banding, neon glows, or subtle earth tones, the palette reshapes how the structure feels. You can base colors on escape velocity, convergence, or even custom algorithms.

```pde
// Example: simple escape-time coloring  
// (black for points that stay bounded, color based on escape iteration otherwise)  
int iter = iterate(z0, maxIterations, escapeRadius);  // your iteration logic  
if (iter >= maxIterations) {  
  stroke(0);  // black or some “inside” color  
} else {  
  float hue = map(iter, 0, maxIterations, 0, 255);  
  colorMode(HSB);  
  stroke(hue, 200, 255);  
}  
point(x, y);
```

### **Animation & Evolving Structures**  
The project supports time-varying parameters, letting you create animations where the fractal morphs organically. Coefficients can drift, palettes can shift, and the viewpoint can glide across the complex plane - resulting in visuals that feel living and fluid.

```pde
void draw() {
  float t = frameCount * 0.01;
  coeffs[3] = 0.7 + 0.3 * sin(t);       // oscillate one coefficient  
  xmin         = -2 + 0.5 * sin(t*0.5);  // pan viewport horizontally  
  drawFractal();  // your main render call  
}
```

> 💡 In your actual `.pde` file, replace Complex, applyPolynomial, iterate, etc. with your project’s naming. The above examples are meant to show structure, not enforce exact usage.

---

## 🎯 Why This Matters

### **A Space for Generative Art**  
ComplexFractals isn’t just a math tool - it’s a creative instrument. With each adjustment, you may discover something unexpected: patterns resembling biological growth, cosmic filaments, crystalline networks, or entirely abstract geometric worlds. Many users treat it as a generative-art engine.

### **A Hands-On Window Into Complex Dynamics**  
The project also acts as a laboratory for understanding nonlinear systems. Each render reveals how tiny numerical changes ripple outward, how attractors form, how chaotic zones interact, and how iteration rules sculpt entire visual landscapes. It’s a way to *see* and visualize complex dynamics, rather than just study them in theory.

---

## 💡 Inspiration & References

Mathematically, the project draws inspiration from classical fractals like the Mandelbrot and Julia sets, which iterate the iconic formula  $z_{n+1} = z_n^2 + c$, mapping each pixel to a complex coordinate whose behavior determines its color. ComplexFractals extends this idea by exploring higher-degree polynomials, Littlewood polynomials, nonlinear hybrids, and even time-varying functions. This opens the door to structures that traditional fractal renderers seldom reveal, greatly expanding the artistic and mathematical possibilities.

---

## 📝 License

This project is released under the **Apache-2.0 License**.  
For details, consult the `LICENSE` file in the repository.

---
