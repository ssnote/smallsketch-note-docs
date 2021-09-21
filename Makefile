
html: index.html

all : index.html pdf

index.html : src/index.adoc src/user-guide.adoc
	asciidoctor -a source-highlighter=coderay  -b html src/index.adoc -o index.html

pdf : smallsketch-note-user-guide.pdf
smallsketch-note-user-guide.pdf: src/index.adoc src/user-guide.adoc
	asciidoctor -r asciidoctor-pdf -a source-highlighter=coderay  -b pdf src/index-pdf.adoc -o $@

clean :
	rm -f *.pdf index.html
