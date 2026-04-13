# Minimalist LaTeX Template for Academic Papers

This repository contains a [LaTeX](https://github.com/latex3/latex2e) template to create an academic paper. The template follows typographical best practices and has a minimalist design. The template is particularly well suited for research papers. It is designed so papers are comfortable to read and easy to scan, both in print and on screen. 

## Documentation

The template is documented at https://pascalmichaillat.org/a/.

## Illustration

- The paper produced by the template can be viewed at https://pascalmichaillat.org/a.pdf.
- The online appendix produced by the template can be viewed at https://pascalmichaillat.org/aa.pdf.

## Usage

- Clone the repository to your local machine.
- Start editing the LaTeX file `paper.tex` to replace the boilerplate content with the content of your paper. 
- Replace the figures in the PDF file `figures.pdf` with the figures to be included in your paper (one figure per page).
- Replace the references in the BibTeX file `paper.bib` with the references to be included in your paper.
- Compile `paper.tex` with pdfTeX. This will generate a PDF file of your paper named `paper.pdf`.

A few files in the repository are required to use the paper template but do not need to be modified. These files must be remain in the same folder as `paper.tex`:

- The LaTeX style file `paper.sty` formats the paper.
- The BibTeX style file `paper.bst` formats the bibliography.

A few files in the repository are not required to use the paper template but are useful for other purposes:

- The file `paper.pdf` illustrates the output of the template. It will be overwritten when `paper.tex` is compiled.
- The file `paper.bbl` illustrates the bibliography produced by the template. It will be overwritten when `paper.tex` is compiled.
- The file `paper.aux` is necessary to produce the online appendix out of the box. It will be overwritten when `paper.tex` is compiled.

## Online appendix

The repository also includes files to produce an online appendix—in case the paper's appendix must be carved out into a separate, online appendix upon publication. An online appendix can be produced as follows:

- Start editing the LaTeX file `appendix.tex` to replace the boilerplate content with the content of your online appendix. 
- The equation and section labels from `paper.tex` can be used in `appendix.tex`. [This requires the following](https://www.ctan.org/pkg/xr):
	- The file `appendix.tex` is in the same folder as `paper.tex`.
	- The file `paper.tex` is compiled first, to create the auxiliary file `paper.aux`.
	- The file `paper.aux` is available when `appendix.tex` is compiled.
- Compile `appendix.tex` with pdfTeX. This generates a PDF file of your appendix named `appendix.pdf`.

A few files in the repository are required to use the appendix template but do not need to be modified. These files must be remain in the same folder as `appendix.tex`:

- The LaTeX style files `paper.sty` and `appendix.sty` format the appendix.
- The BibTeX style file `paper.bst` formats the bibliography.

A few files are not required to use the appendix template but are useful for other purposes:

- The file `appendix.pdf` illustrates the output of the template. It will be overwritten when `appendix.tex` is compiled.
- The file `appendix.bbl` illustrates the bibliography produced by the template. It will be overwritten when `appendix.tex` is compiled.
- The file `appendix.aux` illustrates the references and links underlying the appendix. It will be overwritten when `appendix.tex` is compiled.

## Submission to arXiv

The template is compatible with [arXiv](https://arxiv.org/). After being compiled with pdfTeX, a paper based on the template can be submitted to arXiv in three steps:

- Collect the 4 required files into a folder: 

	1. The source file `paper.tex`
	2. The style file `paper.sty`
	3. The bibliography file `paper.bbl` 
	4. The figure file `figures.pdf`

- Remove `\bibliographystyle{paper}` from the preamble of `paper.tex`.
- Zip the folder and upload the zipped folder to arXiv.

Here are a few things to note:

- The `paper.bib` and `paper.bst` files should not be included in your submission as arXiv will use `paper.bbl` to produce the bibliography. 
- The command `\bibliographystyle{paper}` is not needed in `paper.tex` because arXiv produces the bibliography directly from the `paper.bbl` file. In fact that command would produce an error since the style file `paper.bst` is not included in the submission.

## Software

- The template is currently operational with TeX Live 2025 on macOS.
- Other LaTeX distributions and operating systems may require minor adjustments. Please [report any issues](https://github.com/pmichaillat/latex-math/issues) to help improve compatibility.

## License

This repository is licensed under the [MIT License](LICENSE.md).

## Real-world implementations

- [Recession Detection Using Classifiers on the Anticipation-Precision Frontier](https://arxiv.org/pdf/2506.09664v4.pdf) ([source code](https://arxiv.org/src/2506.09664v4))
- [Has the Recession Started?](https://arxiv.org/pdf/2408.05856v2.pdf) ([source code](https://arxiv.org/src/2408.05856v2))
- [Beveridgean Phillips Curve](https://arxiv.org/pdf/2401.12475v2.pdf) ([source code](https://arxiv.org/src/2401.12475v2))
- [Modeling Migration-Induced Unemployment](https://arxiv.org/pdf/2303.13319v5.pdf) ([source code](https://arxiv.org/src/2303.13319v5))
- [Critical Values Robust to P-hacking](https://arxiv.org/pdf/2005.04141v7.pdf) ([source code](https://arxiv.org/src/2005.04141v7))

## Related resources

- [latex-book](https://github.com/pmichaillat/latex-book) - This LaTeX template produces academic books that follow the same typographic principles as the paper template. 
- [latex-presentation](https://github.com/pmichaillat/latex-presentation) - This LaTeX template produces academic presentations that follow the same typographic principles as the paper template. 
- [latex-math](https://github.com/pmichaillat/latex-math) - These LaTeX commands simplify writing mathematical expressions. They can be used in combination with the paper template.
- [matlab-figures](https://github.com/pmichaillat/matlab-figures) - This MATLAB template produces minimalist scientific figures that can be inserted into your paper.