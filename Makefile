TARGETS ?= book.pdf book.docx book.epub

.PHONY: clean
clean:
	rm -f $(TARGETS)

.PHONY: all
all: $(TARGETS)

book.pdf book.docx book.epub: README.md
	pandoc README.md \
	  --epub-cover-image=images/image12.png \
	  --pdf-engine=xelatex \
	  -o $@

.PHONY: re
re: clean all
