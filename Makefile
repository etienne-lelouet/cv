.PHONY : all clean

all:
	latexmk cv.tex

clean:
	latexmk -C cv.tex
