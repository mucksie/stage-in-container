.PHONY: stage clean

TEX_CC ?= xelatex -halt-on-error
BUILD_DIR ?= ./.build

stage: stage.tex stage.cls
	mkdir --parents $(BUILD_DIR)
	$(TEX_CC) -output-directory=$(BUILD_DIR) $<
	cp --verbose $(BUILD_DIR)/stage.pdf .

clean:
	rm --recursive --verbose ${BUILD_DIR}
	rm --verbose ./stage.pdf
