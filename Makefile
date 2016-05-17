CV_NAME=andrew_gelnar_cv

all: clean build view

view:
	evince $(CV_NAME).pdf

build : $(CV_NAME).tex
	xelatex $(CV_NAME).tex && xelatex $(CV_NAME).tex

clean:
	rm -f $(CV_NAME).aux $(CV_NAME).log $(CV_NAME).out

realclean: clean
	rm -f $(CV_NAME).pdf
