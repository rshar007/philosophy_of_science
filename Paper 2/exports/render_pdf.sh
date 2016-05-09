# set the file name
TARGET="p2-204-351-724.tex"

# move TeX file her and render the LaTeX file
mv ../$TARGET . && latexmk -shell-escape $TARGET && \

    # remove maketitle from TeX file
    awk '!/\maketitle/' $TARGET > temp && mv temp $TARGET && \

    # compile the PDF
    pdflatex -shell-escape $TARGET ||

# otherwise tell me that something went wronng
    echo "Uh oh... something went wrong"

# delete LaTeX extra files
rm -r _minted*
rm *.aux *.dvi *.fdb_latexmk *.fls *.out *.tex
   
