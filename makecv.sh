cd ../tce.github.io
git checkout source
cd ../cv-old

mv papers.bib papers.bibSAV
cp ../tce.github.io/_bibliography/papers.bib papers.bib
chmod 555 papers.bib
pdflatex cv-only
biber cv-only
pdflatex cv-only
pdflatex cv-only
cp cv-only.pdf ../tce.github.io/assets/pdf/CV.pdf

cd ../tce.github.io
git add assets/pdf/CV.pdf 
git commit -m "new CV file"
git push
./bin/deploy --user
