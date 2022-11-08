# Minimalist LaTeX Template for Academic Papers

This repository contains a [LaTeX](https://github.com/latex3/latex2e) template to create an academic paper. The template follows typographical best practices and has a minimalist design. The template is particularly well suited for research papers. It is designed so papers are comfortable to read and easy to scan, both in print and on screen. 

## Documentation

The template is documented at https://pascalmichaillat.org/a/.

## Illustration

+ The paper produced by the template can be viewed at https://pascalmichaillat.org/a.pdf.
+ The online appendix produced by the template can be viewed at https://pascalmichaillat.org/aa.pdf.

## Usage

+ Clone the repository to your local machine.
+ Start editing the LaTeX file `paper.tex` to replace the boilerplate content with the content of your paper. 
+ Replace the figures in the PDF file `figures.pdf` with the figures to be included in your paper (one figure per page).
+ Replace the references in the BibTeX file `bibliography.bib` with the references to be included in your paper.
+ Compile `paper.tex` with pdfTeX. This will generate a PDF file of your paper named `paper.pdf`.
+ The LaTeX style file `paper.sty` formats the paper. It must be included in the same folder as `paper.tex`. It can be modified to alter the paper's format.
+ The BibTeX style file `bibliography.bst` formats the bibliography. It must be included in the same folder as `paper.tex`. It can be modified to alter the bibliography's format. The style file is based on `econ.bst`, which was created by Shiro Takeda and is [available on GitHub](https://github.com/ShiroTakeda/econ-bst).
+ The file `paper.pdf` is not required to use the template. It only illustrates the output of the template and will be overwritten when `paper.tex` is compiled.

## Online appendix

The repository also includes files to produce an online appendix—in case the paper's appendix must be carved out into a separate, online appendix upon publication. An online appendix can be produced as follows:

+ Start editing the LaTeX file `appendix.tex` to replace the boilerplate content with the content of your online appendix. 
+ The equation and section labels from `paper.tex` can be used in `appendix.tex`. [This requires the following](https://www.ctan.org/pkg/xr):
	+ The file `appendix.tex` is in the same folder as `paper.tex`.
	+ The file `paper.tex` is compiled first.
	+ The auxiliary file `paper.aux` is available when `appendix.tex` is compiled.
+ Compile `appendix.tex` with pdfTeX. This generates a PDF file of your appendix named `appendix.pdf`.
+ The LaTeX style file `appendix.sty` formats the online appendix, in conjunction with `paper.sty`. Both style files must be included in the same folder as `appendix.tex`.
+ The file `appendix.pdf` is not required to use the template. It only illustrates the output of the template and will be overwritten when `appendix.tex` is compiled.

## Submission to arXiv

The template is perfectly compatible with [arXiv](https://arxiv.org/). After being compiled with pdfTeX, a paper based on the template can be submitted to arXiv in three steps:

1. Adjust the preamble of `paper.tex`. On line 3, replace `\bibliographystyle{bibliography}` by `\pdfoutput=1`. The `\bibliographystyle{bibliography}` command is not needed because arXiv produces the bibliography from the `paper.bbl` file. The `\pdfoutput=1` is required because the paper is compiled with pdfTeX.
2. Collect the required files into a folder. There should be four files: the source file `paper.tex`, the bibliography file `paper.bbl`, the style file `paper.sty`, and the figure file `figures.pdf`. 
3. Zip the folder and upload the zipped folder to arXiv.

The `arXiv` folder illustrates how the template should be prepared for submission to arXiv. The folder contains the four required files: `paper.tex`, `paper.bbl`, `paper.sty`, and `figures.pdf`. Furthermore, the preamble of `paper.tex` is adjusted appropriately. After being zipped, the folder could be uploaded to arXiv and would compile properly.

## Software

+ The template was developed with TeX Live 2023 on macOS. 
+ Other LaTeX distributions and operating systems may require minor adjustments. Please [report any issues](https://github.com/pmichaillat/latex-math/issues) to help improve compatibility.

## License

This repository is licensed under the [MIT License](LICENSE.md).

## Real-world implementations

+ [Has the Recession Started?](https://arxiv.org/pdf/2408.05856v2.pdf) ([source code](https://arxiv.org/src/2408.05856v2))
+ [Beveridgean Phillips Curve](https://arxiv.org/pdf/2401.12475v2.pdf) ([source code](https://arxiv.org/src/2401.12475v2))
+ [Modeling Migration-Induced Unemployment](https://arxiv.org/pdf/2303.13319v4.pdf) ([source code](https://arxiv.org/src/2303.13319v4))
+ [Critical Values Robust to P-hacking](https://arxiv.org/pdf/2005.04141v7.pdf) ([source code](https://arxiv.org/src/2005.04141v7))

## Related resources

+ [latex-presentation](https://github.com/pmichaillat/latex-presentation) - This LaTeX template produces academic presentations following the same typographic principles and with a similar appearance as this paper template. 
+ [latex-math](https://github.com/pmichaillat/latex-math) - These LaTeX commands simplify writing mathematical expressions. They can be used in combination with this paper template.