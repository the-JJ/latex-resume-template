# JJ's LaTeX Résumé Template [![Example](https://img.shields.io/badge/example-pdf-green.svg)](https://raw.githubusercontent.com/the-JJ/latex-resume-template/master/examples/resume.pdf)

A content-focused two-column LaTeX template for a **Résumé** or **CV (Curriculum Vitae)**. Unsatisfied by available options, I decided to make my own template for personal use. Satisfied by the result, I decided to open-source it.

Feel free to use it, improve it (btw I accept pull requests), or conquer the world with it


## Table of contents

* [Preview](#preview)
* [How to Use](#how-to-use)


## Preview

#### Résumé

Check out the [PDF](https://raw.githubusercontent.com/the-JJ/latex-resume-template/master/examples/resume.pdf)

![Résumé](https://raw.githubusercontent.com/the-JJ/latex-resume-template/master/examples/resume.png)


## How to Use

#### Requirements

The following packages need to be installed:

* tex-live distribution
* tex-live fonts
* pdflatex


#### Usage

To build your pdf, run:

```bash
$ pdflatex resume.tex -output-directory=./build
```

This will output the pdf file in `build/resume.pdf`. 
