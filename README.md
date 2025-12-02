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

