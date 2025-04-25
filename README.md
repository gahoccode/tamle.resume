# JSON Resume

## Usage Commands
### Install jsonresume

```bash
npm install -g resume-cli
```
### Export and View Resume

```bash
# Export resume to HTML using Kendall theme
resume export resume.html --theme kendall

# Export resume to PDF using Kendall theme
resume export resume.pdf --theme kendall

# Serve resume locally
resume serve --theme kendall
```

View in Browser: Open http://localhost:4000 in your web browser to see the rendered resume

### Install Themes

```bash
# Install Straightforward theme
npm i jsonresume-theme-straightforward

# Install Kendall theme
npm install jsonresume-theme-kendall
```

### Alternative Installation (Cloning the Repository)

#### Step-by-Step Instructions

1. Clone the repository:

```bash
git clone https://github.com/LinuxBozo/jsonresume-theme-kendall.git
```

2. Navigate to the cloned directory:

```bash
cd jsonresume-theme-kendall
```

3. Install dependencies:

```bash
npm install
```

4. Export your resume:

```bash
resume export resume.pdf --theme straightforward
resume export resume.pdf --theme kendall
```

---

For more detailed documentation and advanced usage, see the official docs:
[JSON Resume Getting Started](https://jsonresume.org/getting-started)
