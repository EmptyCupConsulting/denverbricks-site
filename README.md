# DenverBricks.org Website

This repository contains the source code for [denverbricks.org](https://denverbricks.org), the official website for the **DenverBricks (Colorado DataBricks) User Group**.

The site is built with [Jekyll](https://jekyllrb.com/) and the [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/) theme, and is deployed automatically via **GitHub Pages**.

---

## 🚀 About DenverBricks
The DenverBricks (also referred to as Colorado DataBricks) user group is a community initiative designed to bring together users of the Databricks platform—data engineers, data scientists, analysts, architects, and AI/ML practitioners—from across Colorado.

- 📍 Based in Colorado  
- 🧑‍🤝‍🧑 Open to all skill levels  
- 🔥 Focused on Databricks, data engineering, data science, and AI/ML  

---

## 🛠 Development

You can develop and preview the site in a few different ways:

### Option 1: GitHub Codespaces (recommended)
No local setup required.
1. Click the green **Code** button → **Codespaces** tab → **Create codespace on main**.
2. Once the Codespace is ready:
   - Run `make serve` in the terminal **OR**
   - Press **F5** in VS Code.
3. The site will be served on port **4000** and auto-forwarded by Codespaces → open in your browser.

### Option 2: Local development (advanced)
If you already have Ruby and Bundler installed:
```bash
bundle install
bundle exec jekyll serve
