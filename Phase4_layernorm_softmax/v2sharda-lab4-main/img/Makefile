convert:
	# convert -density 600 ${name}-crop.pdf ${name}.png
	pdftoppm -png -r 300 ${name}-crop.pdf ${name}
	mv ${name}-1.png ${name}.png

systolic.png: systolic.tex
	pdflatex -shell-escape systolic.tex
	pdfcrop systolic.pdf
	make convert name=systolic
	make clean

head.png: head.tex
	pdflatex -shell-escape head.tex
	pdfcrop head.pdf
	make convert name=head
	make clean

head_clean.png: head_clean.tex
	pdflatex -shell-escape head_clean.tex
	pdfcrop head_clean.pdf
	make convert name=head_clean
	make clean

head_mm.png: head_mm.tex
	pdflatex -shell-escape head_mm.tex
	pdfcrop head_mm.pdf
	make convert name=head_mm
	make clean

head_compute.png: head_compute.tex
	pdflatex -shell-escape head_compute.tex
	pdfcrop head_compute.pdf
	make convert name=head_compute
	make clean

softmax.png: softmax.tex
	pdflatex -shell-escape softmax.tex
	pdfcrop softmax.pdf
	make convert name=softmax
	make clean

clean:
	rm -Rf *.fls *.gz *.*texmk *.out *.snm *.log *.toc *aux *.nav *-crop.pdf *.pdf _minted*

reallyclean:
	rm systolic.png head.png head_mm.png head_compute.png
