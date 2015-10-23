pdf:
	@clear
	@pdflatex -shell-escape final.tex # compila c/ sumário vazio e sem links p/ referências
	@bibtex final # compila as referências
	@makeindex final.nlo -s nomencl.ist -o final.nls # gera a lista de siglas
	@pdflatex -shell-escape final.tex # compila adicionando o sumário
	@pdflatex -shell-escape final.tex # compila adicionando os links p/ as referências
	@open final.pdf 

clean:
	@rm *.bbl *.aux *.blg *.log *.toc *.lof *.lol *.out *.ilg *.nlo *.nls *.lot 2> /dev/null; exit 0