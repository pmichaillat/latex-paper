# Minimalist LaTeX Template for Academic Papers

This repository contains a [LaTeX](https://github.com/latex3/latex2e) template to create an academic paper. The template carefully follows typographical best practices and has a minimalist design. The template is particularly well suited for research papers. It is designed so papers are comfortable to read and easy to scan, both in print and on screen. 

## Documentation

The template is documented at https://pascalmichaillat.org/a/.

## Illustration

+ The paper produced by the template can be viewed at https://pascalmichaillat.org/d2.pdf.
+ The online appendix produced by the template can be viewed at https://pascalmichaillat.org/d2a.pdf.

## Usage

+ Clone the repository to your local machine.
+ Start editing the LaTeX file `paper.tex` to replace the boilerplate content with the content of your paper. 
+ Replace the figures in the PDF file `figures.pdf` with the figures that will be included in the paper. There should be one figure per page.
+ Replace the references in the BibTeX file `bibliography.bib` with the references that will be included in the paper.
+ Compile `paper.tex` with pdfTeX. This will generate a PDF file of your paper named `paper.pdf`.
+ The LaTeX style file `paper.sty` collects all the commands to format the paper. The file must be included in the same folder as `paper.tex`. It can be modified to alter the paper's format.
+ The BibTeX style file `bibliography.bst` collects all the commands to format the bibliography. It must be included in the same folder as `paper.tex`. It can be modified to alter the bibliography's format. This style file is based on `econ.bst`, which was created by Shiro Takeda and is [available on GitHub](https://github.com/ShiroTakeda/econ-bst).
+ The file `paper.pdf` is not required to use the template. It only illustrate the output of the template. It will be overridden once `paper.tex` is compiled.

## Online appendix

The repository also includes files to produce an online appendix—in case the paper's appendix must be carved out into a separate, online appendix upon publication. An online appendix can be produced as follows:

+ Start editing the LaTeX file `appendix.tex` to replace the boilerplate content with the content of your online appendix. 
+ The equation and section labels from `paper.tex` can be used in `appendix.tex`. [This requires the following](https://www.ctan.org/pkg/xr):
	+ The file `appendix.tex` is in the same folder as `paper.tex`.
	+ The file `paper.tex` is compiled first.
	+ The auxiliary file `paper.aux` is available when `appendix.tex` is compiled.
+ Compile `appendix.tex` with pdfTeX. This will generate a PDF file of your appendix named `appendix.pdf`.
+ The LaTeX style file `appendix.sty` collects additional commands to format the online appendix. It must be included in the same folder as `appendix.tex`. It can be modified to alter the format of the online appendix. It works in conjunction with `paper.sty`, which must be included in the same folder. 
+ The file `appendix.pdf` is not required to use the template. It only illustrate the output of the template, and will be overridden once `appendix.tex` is compiled.

## Submission to arXiv

The template is perfectly compatible with [arXiv](https://arxiv.org/). A paper based on the template can be submitted to arXiv in just three steps once it has been compiled with pdfTeX:

1. Adjust the preamble of the source file `paper.tex`: on line 3, replace `\bibliographystyle{bibliography}` by `\pdfoutput=1`. The `\bibliographystyle{bibliography}` command is not needed because arXiv produces the bibliography directly from the `paper.bbl` file. The `\pdfoutput=1` is required because the paper is compiled with pdfTeX.
2. Collect the required files into a folder. There should be four files: the source file `paper.tex`, the bibliography file `paper.bbl`, the style file `paper.sty`, and the figure file `figures.pdf`. 
3. Zip the folder and upload the zipped file to arXiv.

The `arXiv` folder illustrates how the template should be prepared for submission to arXiv. The folder contains the four required files: `paper.tex`, `paper.bbl`, `paper.sty`, and `figures.pdf`. Furthermore, the preamble of `paper.tex` is adjusted appropriately. After being zipped, the folder could be uploaded to arXiv and would compile properly.

## Software

The template was developed, tested, and validated on a Mac with the MacTeX-2023 distribution. 

While the template should also work on other operating systems and with other LaTeX distributions, compatibility cannot be guaranteed. Users on Windows or Linux systems, or those using different LaTeX distributions, may need to make minor adjustments. [Please report](https://github.com/pmichaillat/latex-paper/issues) any compatibility issues or bugs to help improve cross-platform support.

## License

This repository is licensed under the [MIT License](LICENSE.md).

## Real-world implementations

+ [Has the Recession Started?](https://arxiv.org/pdf/2408.05856v2.pdf) ([source code](https://arxiv.org/src/2408.05856))
+ [Beveridgean Phillips Curve](https://arxiv.org/pdf/2401.12475v2.pdf) ([source code](https://arxiv.org/src/2401.12475v2))
+ [Modeling Migration-Induced Unemployment](https://arxiv.org/pdf/2303.13319v4.pdf) ([source code](https://arxiv.org/src/2303.13319v4))
+ [Critical Values Robust to P-hacking](https://arxiv.org/pdf/2005.04141v7.pdf) ([source code](https://arxiv.org/src/2005.04141v7))

## Related resources

+ [LaTeX template for academic presentations](https://github.com/pmichaillat/latex-presentation) - This template produces academic presentations following the same principles, and with a similar appearance, as this paper template. 
+ [LaTeX commands to write math](https://github.com/pmichaillat/latex-math) - These commands make it easy to write mathematical expressions. They can be used in combination with this paper template.