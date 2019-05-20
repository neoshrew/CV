CV_NAME=andrew_gelnar_cv
IMAGE_NAME=neoshrew/cvbuilder
CWD=$(shell pwd)

all: clean build view

view:
	evince $(CV_NAME).pdf

build : $(CV_NAME).tex
	xelatex $(CV_NAME).tex && xelatex $(CV_NAME).tex

docker-build:
	docker run --rm -v $(CWD):/build -w /build $(IMAGE_NAME) make build

clean:
	rm -f $(CV_NAME).aux $(CV_NAME).log $(CV_NAME).out

realclean: clean
	rm -f $(CV_NAME).pdf

build-docker-image:
	docker build -t $(IMAGE_NAME) .
