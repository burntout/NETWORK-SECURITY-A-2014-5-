all: 
	pandoc -f markdown -o presentations.html -t slidy  -s presentations.md
	pandoc -f markdown -o analysis-aed.pdf -t latex -s analysis-aed.mdwn
    
