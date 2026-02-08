# 📊 Markdown-to-PowerPoint: The Docs-as-Code Presentation Workflow

![Build Status](https://github.com/ltwalt/my-slides-repo/actions/workflows/build_slides.yml/badge.svg)

This repository hosts a **Docs-as-Code** workflow for creating PowerPoint presentations. Instead of dragging and dropping boxes in PowerPoint, we write content in **Markdown**, define diagrams with **Mermaid**, and compile everything into a native `.pptx` file using **Pandoc**.

## 🚀 Features

* **Version Control:** Track changes to your slides using Git.
* **Automated Builds:** GitHub Actions automatically compiles the `.pptx` on every push.
* **Diagrams as Code:** Generate complex flowcharts and Gantt charts using Mermaid JS syntax.
* **AI-Ready:** Designed to work with LLMs (Gemini, ChatGPT) to rapidly generate slide content.
* **Custom Branding:** Uses a `reference.pptx` file to apply corporate branding/templates automatically.

---

## 📂 Repository Structure

```text
.
├── .github/
│   └── workflows/
│       └── build_slides.yml  # The automation script for GitHub Actions
├── dist/                     # The output folder (ignored by git)
├── src/
│   ├── presentation.md       # The main source file for your slides
│   └── images/               # Static assets (logos, screenshots)
├── templates/
│   └── reference.pptx        # The "Style Engine" (Slide Master)
└── README.md