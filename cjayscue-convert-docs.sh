

# Declare input argument as a variable

echo What markdown file would you like to convert?
read fileName
echo Sure, we will convert $fileName

# Convert markdown to HTML
pandoc -o $fileName.html $fileName

# Convert markdown to DOCX
pandoc -o $fileName.docx $fileName

# Convert markdown to ODT
pandoc -o $fileName.odt $fileName

# Convert markdown to PDF
pandoc -S --title=$fileName -o $fileName.html $fileName && pandoc -S --toc -o $fileName.pdf $fileName.html

# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo Converted $fileName to HTML, DOCX, ODT, PDF