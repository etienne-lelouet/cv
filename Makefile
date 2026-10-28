.PHONY: all watch clean

all: cv.pdf

cv.pdf: cv.typ
	typst compile cv.typ cv.pdf

watch:
	typst watch cv.typ cv.pdf

clean:
	rm -f cv.pdf
