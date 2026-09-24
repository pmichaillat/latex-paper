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
- Other LaTeX distributions and operating systems may require minor adjustments. Please [report any issues](https://github.com/pmichaillat/latex-paper/issues) to help improve compatibility.

## License

This repository is licensed under the [MIT License](LICENSE.md).

## Real-world implementations

- [Beveridgean Phillips Curve](https://arxiv.org/pdf/2401.12475v3.pdf) (by P. Michaillat and E. Saez) ([source code](https://arxiv.org/src/2401.12475v3))
- [Modeling Migration-Induced Unemployment](https://arxiv.org/pdf/2303.13319v6.pdf) (by P. Michaillat) ([source code](https://arxiv.org/src/2303.13319v6))
- [Has the Recession Started?](https://arxiv.org/pdf/2408.05856v2.pdf) (by P. Michaillat and E. Saez) ([source code](https://arxiv.org/src/2408.05856v2))
- [Critical Values Robust to P-hacking](https://arxiv.org/pdf/2005.04141v7.pdf) (by A. McCloskey and P. Michaillat) ([source code](https://arxiv.org/src/2005.04141v7))
- [Market Beliefs about Open vs. Closed AI](https://arxiv.org/pdf/2512.14969v3.pdf) (by D. Bjorkegren) ([source code](https://arxiv.org/src/2512.14969v3))
- [Workers as Partners: a Theory of Responsible Firms in Labor Markets](https://arxiv.org/pdf/2411.05567v4.pdf) (by F. Del Prato and M. Fleurbaey) ([source code](https://arxiv.org/src/2411.05567v4))
- [Comparing Experimental and Nonexperimental Methods: What Lessons Have We Learned Four Decades After LaLonde (1986)?](https://arxiv.org/pdf/2406.00827v1.pdf) (by G. Imbens and Y. Xu) ([source code](https://arxiv.org/src/2406.00827v1))
- [Identification of Average Treatment Effects in Nonparametric Panel Models](https://arxiv.org/pdf/2503.19873v1.pdf) (by S. Athey and G. Imbens) ([source code](https://arxiv.org/src/2503.19873v1))
- [Triply Robust Panel Estimators](https://arxiv.org/pdf/2508.21536v3.pdf) (by S. Athey, G. Imbens, Z. Qu, and D. Viviano) ([source code](https://arxiv.org/src/2508.21536v3))
- [Estimating Variances for Causal Panel Data Estimators](https://arxiv.org/pdf/2510.11841v2.pdf) (by A. Almeida, S. Athey, G. Imbens, E. Lestant, and A. Olaizola) ([source code](https://arxiv.org/src/2510.11841v2))
- [Estimating Causal Effects from Data Generated by Stochastic Algorithms](https://arxiv.org/pdf/2607.05792v1.pdf) (by S. Athey, G. Imbens, and Z. Ji) ([source code](https://arxiv.org/src/2607.05792v1))
- [The Labor Market Incidence of New Technologies](https://arxiv.org/pdf/2504.04047v2.pdf) (by T. Fan) ([source code](https://arxiv.org/src/2504.04047v2))
- [Green Shields: The Role of ESG in Uncertain Time](https://arxiv.org/pdf/2506.02143v1.pdf) (by F. Kansoy and D. Stasiulaitis) ([source code](https://arxiv.org/src/2506.02143v1))
- [Automation Experiments and Inequality](https://arxiv.org/pdf/2510.24923v1.pdf) (by S. Benzell and K. Myers) ([source code](https://arxiv.org/src/2510.24923v1))
- [MarketBench: Evaluating AI Agents as Market Participants](https://arxiv.org/pdf/2604.23897v1.pdf) (by A. Fradkin and R. Krishnan) ([source code](https://arxiv.org/src/2604.23897v1))
- [The Empirical Content of Revealed Preference in High Dimensions](https://arxiv.org/pdf/2605.29361v1.pdf) (by I. Crawford and L. Tian) ([source code](https://arxiv.org/src/2605.29361v1))
- [Beveridgean Unemployment Gap with Part-time Employment](https://arxiv.org/pdf/2606.21801) (by R. Zhang) ([source code](https://arxiv.org/src/2606.21801))
- [Recession Detection in Japan using Labor Market Data](https://arxiv.org/pdf/2606.00948) (by N. Sikand and R. Zhang) ([source code](https://arxiv.org/src/2606.00948))
- [Dynamic Latent-Factor Model with High-Dimensional Asset Characteristics](https://arxiv.org/pdf/2405.15721) (by A. Baybutt) ([source code]((https://arxiv.org/src/2405.15721)))
- [Reputation-Driven Adoption and Avoidance of Algorithmic Decision Aids in Credence Goods Markets](https://arxiv.org/pdf/2401.17929v3.pdf) (by A. Erlei and L. Meub) ([source code](https://arxiv.org/src/2401.17929v3))
- [Factor-Biased Efficiency Gains from Exporting: Evidence from Colombia](https://arxiv.org/pdf/2407.14016v5.pdf) (by J. Hong and D. Luparello) ([source code](https://arxiv.org/src/2407.14016v5))
- [External and Internal Market for Managers](https://gstoledo.github.io/docs/Toledo_JMP.pdf) (by G. Toledo)

## Related resources

- [latex-book](https://github.com/pmichaillat/latex-book) - This LaTeX template produces academic books that follow the same typographic principles as the paper template. 
- [latex-presentation](https://github.com/pmichaillat/latex-presentation) - This LaTeX template produces academic presentations that follow the same typographic principles as the paper template. 
- [latex-math](https://github.com/pmichaillat/latex-math) - These LaTeX commands simplify writing mathematical expressions. They can be used in combination with the paper template.
- [matlab-figures](https://github.com/pmichaillat/matlab-figures) - This MATLAB template produces minimalist scientific figures that can be inserted into your paper.