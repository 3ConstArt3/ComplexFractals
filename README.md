# ComplexFractals  

**ComplexFractals** is a mathematically-driven creative-coding project that transforms complex-number dynamics into vivid, high-resolution generative artworks.  
Instead of limiting itself to traditional fractal sets (like Mandelbrot or Julia), this project explores the far richer universe of **Littlewood polynomials** and other customizable iterative functions — letting you dive into structures that are chaotic, elegant, and often visually mind-bending.

By blending:  
- **complex-plane mappings**,  
- **iterative evaluation**,  
- **escape-time / convergence logic**, and  
- **dynamic color-mapping**,  

the project turns abstract mathematical behavior into expressive visual geometry. It is both a playground for artistic exploration and a hands-on laboratory for anyone who enjoys experimenting with complex dynamical systems.

---

## 📑 Contents

Inside the `/code` directory you will find the full Processing-based implementation:

- All source files are written in **Processing (Java)**.
- Parameters are fully customizable:  
  - Polynomial coefficients  
  - Iteration depth / maximum iteration threshold  
  - Color palettes and mapping styles  
  - Complex plane window (zooming, panning, scaling)  
- Every pixel represents a complex value that undergoes repeated evaluation using a Littlewood polynomial or related function.  
- Each pixel is then colored using criteria such as:  
  - Divergence speed  
  - Convergence behavior  
  - Iteration count  
  - Custom gradient or palette transformations  

This architecture allows for an enormous variety of emergent patterns — from smooth flowing fields to intricate branching structures reminiscent of classical fractal sets, but with a far broader expressive range.

---

## 🛠️ Getting Started

### Prerequisites

Before running the project, ensure you have:  

- **Processing** installed (Java mode) – https://processing.org/  
- A local clone or downloaded copy of this repository  

Processing is lightweight and cross-platform, so setup should take only a minute.

---

## ▶️ Installation & Running

Getting started is simple:

1. **Clone or download** this repository to your machine.  
2. Launch **Processing**, then open the main `.pde` file located inside the project folder.  
3. **Adjust parameters** to your liking:  
   - polynomial coefficients  
   - iteration limits  
   - zoom / region boundaries  
   - color modes  
4. Hit **Run**. A real-time fractal visualization window will open immediately.  
5. (Optional) Use Processing’s built-in features to **export snapshots or render animations** – ideal for generating wallpapers, high-res prints, looping videos, or motion-art sequences.

---

## 🔧 What You Can Tweak / Explore

ComplexFractals is intentionally open-ended — nearly every mathematical or visual parameter can be shaped, remixed, and pushed to extremes. This freedom makes the project both a creative tool and a deep experimental sandbox.

### **• Polynomial Coefficients & Function Structure**
You aren’t limited to the classical  
\[
z_{n+1} = z_n^2 + c
\]  
Instead, you can modify or completely redefine the underlying function. Try higher-degree polynomials, asymmetric coefficient sets, or even hybrid functions. Each small change often reshapes the entire fractal landscape, generating structures that feel alien compared to classical fractals.

---

### **• Complex-Plane Viewport**
Adjust the region of the complex plane that the renderer observes:
- Modify **real** and **imaginary** boundaries  
- **Zoom** deeply into microstructures  
- **Pan** across the plane to discover new attractors and chaotic pockets  

Exploring different windows often reveals patterns within patterns — spirals, filaments, islands, and unexpected symmetry.

---

### **• Iteration Depth & Escape Criteria**
Control:
- Maximum iteration count  
- Escape thresholds  
- Convergence tolerances  

Higher iteration caps expose finer details at the cost of compute time. Playing with escape criteria can produce smooth, organic gradients or sharp, crystalline edges depending on how strict you make them.

---

### **• Color Mapping & Visual Modes**
Color is fully programmable. You can map colors based on:
- Iteration count  
- Escape velocity  
- Convergence basin  
- Smooth coloring algorithms  
- Custom gradient palettes  
- Banding, noise, harmonic cycles  

This allows artistic control over mood — from neon chaos to soft watercolor-like flows.

---

### **• Animation & Time-Based Evolution**
Turn static fractals into moving, morphing structures by:
- Varying coefficients over time  
- Shifting the complex-plane viewport  
- Cycling through color schemes  
- Animating parameters such as angle, magnitude, or interpolation weights  

These generative animations can resemble living organisms, liquid geometry, or pulsating cosmic forms.

---

## 🎯 Why This Matters

### **• A Playground for Generative Art**
By merging mathematics with visual experimentation, ComplexFractals produces images that are intricate, alien, and often breathtaking. Many results look like:
- Organic growth  
- Cosmic structures  
- Biological systems  
- Crystalline formations  
- Abstract digital sculptures  

It’s an ideal platform for artists exploring algorithmic aesthetics.

### **• A Hands-On Lab for Complex Dynamics**
Every tweak teaches something:
- How systems behave near chaotic regions  
- How convergence basins form  
- How parameter changes reshape global structure  
- How polynomial degree affects stability and divergence  

It's a direct way to *see* math in action and develop intuition about nonlinear dynamical systems.

---

## 💡 Inspiration & References

### **• Classical Fractal Iteration (Mandelbrot / Julia Sets)**
Traditional fractals iterate the map:
\[
z_{n+1} = z_n^2 + c
\]
Each pixel is a complex coordinate whose trajectory determines its color. Escape-time methods highlight how quickly points diverge, producing the iconic boundary patterns.

### **• Beyond Classical Fractals**
Many visualizers stop at quadratic or simple complex functions.  
ComplexFractals opens the door to:  
- Higher-degree polynomials  
- Littlewood polynomials  
- Nonlinear composites  
- Experimental functions  
- Time-varying systems  

This greatly widens the expressive space and enables patterns rarely seen in standard fractal renderers.

---

## 📝 License

This project is distributed under the **Apache-2.0 License**.  
See the `LICENSE` file for full legal details.
