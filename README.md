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

### Export with Custom Resume Filename

By default, resume-cli looks for a file named `resume.json`. To use a custom filename:

```bash
# Export using a custom JSON resume file
resume export output.pdf --theme straightforward --resume custom_resume.json

# Real example using finance resume
resume export resume_finance_simplified.pdf --theme straightforward --resume resume_finance_simplied.json
```

This is useful when maintaining multiple versions of your resume (e.g., for different industries or positions).

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

## Deployment and Domain Configuration

### Netlify Continuous Deployment

This repository is set up for continuous deployment with Netlify. When changes are pushed to the main branch, Netlify automatically:
1. Pulls the latest code
2. Installs dependencies
3. Runs `npm run build` (which exports the resume to HTML)
4. Deploys the updated site

### Configuring Namecheap DNS for Netlify

To point your Namecheap domain to your Netlify-hosted resume:

1. **Log in to your Namecheap account**
2. Go to **Domain List** → **Manage** your domain
3. Select the **Advanced DNS** tab

#### For Root Domain (yourdomain.com)

Add these A Records:

| Type | Host | Value | TTL |
|------|------|-------|-----|
| A Record | @ | 75.2.60.5 | Automatic |
| A Record | @ | 76.76.21.21 | Automatic |

#### For WWW Subdomain (www.yourdomain.com)

Add this CNAME Record:

| Type | Host | Value | TTL |
|------|------|-------|-----|
| CNAME Record | www | your-netlify-site-name.netlify.app | Automatic |

> Replace `your-netlify-site-name` with your actual Netlify site name (e.g., tam-le-finance-resume-fzfpp)

#### For Custom Subdomain (optional, e.g., resume.yourdomain.com)

| Type | Host | Value | TTL |
|------|------|-------|-----|
| CNAME Record | resume | your-netlify-site-name.netlify.app | Automatic |

### Important Notes

- DNS changes may take 24-48 hours to fully propagate
- Remove any conflicting DNS records before adding new ones
- Netlify automatically handles SSL/HTTPS certificates
- Verify DNS configuration in Netlify under Domain Management

For more detailed documentation and advanced usage, see the official docs:
[JSON Resume Getting Started](https://jsonresume.org/getting-started)
[Netlify Custom Domains](https://docs.netlify.com/domains-https/custom-domains/)
