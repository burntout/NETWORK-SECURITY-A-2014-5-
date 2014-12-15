all: 
	pandoc -f markdown -o presentations.html -t slidy  -s presentations.md
    
