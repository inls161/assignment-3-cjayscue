

# Declare input argument as a variable

echo What markdown file would you like to convert?
read fileName
echo Sure, we will convert $fileName

filebase=${fileName%.*}
echo $filebase

# Convert markdown to HTML
pandoc -S -o $filebase.html $fileName

# Convert markdown to DOCX
pandoc -S -o $filebase.docx $fileName

# Convert markdown to ODT
pandoc -S -o $filebase.odt $fileName

# Convert markdown to PDF
pandoc -S -o $filebase.html $fileName && pandoc -S -o $filebase.pdf $filebase.html

# Make the command line read "Converted $filename to HTML, DOCX, ODT, PDF
echo -e      "\e[93m Converted $filebase to HTML, DOCX, ODT, PDF"

#extract last 3 from variable or ask user to input file name without.md
