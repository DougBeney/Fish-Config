function pdf-compress
	gs -dPrinted=false -sDEVICE=pdfwrite -dCompatibilityLevel=1.6 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=\"(echo $argv[1] | sed 's/\.pdf/ compressed.pdf/g')\" "$argv[1]"
end
