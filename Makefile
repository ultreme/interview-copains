TARGETS ?= book.pdf book.docx book.epub book.rtf

.PHONY: all
all: $(TARGETS)

.PHONY: clean
clean:
	rm -f $(TARGETS)

$(TARGETS): README.md
	pandoc README.md \
	  --epub-cover-image=images/image12.png \
	  --pdf-engine=xelatex \
	  -s \
	  -V papersize:b6 \
	  -V geometry:b6paper \
	  -o $@

.PHONY: re
re: clean all
