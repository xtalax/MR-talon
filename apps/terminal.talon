app: mintty.exe
app: WindowsTerminal.exe
app: /.*/
and title: /MSYS:.*/
-
CD {directories}:
    insert('cd "{directories}" && ls')
    key(enter)
file {files}:
    insert('{files} ')
folder {directories}:
    insert('{directories}/')
go {folders}:
	"cd {folders} && ls"
	key(enter)
dot {extensions}:
	".{extensions}"
#------------------------------------------------------
bash: "bash "
cancel: key(ctrl-c)
CD up:
	"cd .."
	key(enter)
CD: "cd "
curly: "curl "
greppy: "grep "
greppy recursive: "grep -R "
header: "head "
echo: "echo "
list: "ls "
remove: "rm "
remove recursive: "rm -rf "
line count: "wc -l "
make directory: "mkdir "
move file: "mv "
pipe: " | "
lodge and: " && "
to file: " > "
sed replace:
    'sed -i -e "s///g"'
    key(left:4)
sumatra [PDF]: "SumatraPDF "
sublime: "subl -n "
sublime here:
	"subl -n ."
	key(enter)
jupiter notebook: "jupyter notebook"
jupiter lab: "jupyter lab"
youtube download: "youtube-dl -f best "
FFM peg: "ffmpeg "
W get: "wget "
catty: "cat "
explorer here:
	"explorer ."
	key(enter)
code here:
	"code ."
	key(enter)
#------------------------------------------------------
# options
option continue: " --continue "
option abort: " --abort "
option skip: " --skip "
option help: " --help"
option version: " --version"
#------------------------------------------------------
PDF LaTeX: "pdflatex "
bib TeX: "bibtex "
pan doc:
	'pandoc  -o '
	key(left:4)
pan doc beamer:
	"pandoc  -t beamer -o "
	key(left:14)
#------------------------------------------------------
# python
python 3: "python3 "
python 2: "python27 "
python 3 debug: "python3 -m pdb "
python 3 pytest: "python3 -m pytest "
python 2 pytest: "python27 -m pytest "
python 2 64: "C:/Python27-64/python.exe "
python 3 32: "C:/Python38-32/python.exe "
python 2 pip install: "python27 -m pip install "
python 3 pip install: "python3 -m pip install "
upgrade pip: "--upgrade pip"
pip two (install | build) package: "pip2 install -e ."
pie test: "pytest "
pie flakes: "pyflakes "
eye python: "ipython "
#------------------------------------------------------
# r
R script:
	"Rscript .r"
	key(left:2)
R markdown:
	"Rscript -e \"rmarkdown::render('.Rmd', clean=TRUE)\""
	key(left:19)
#------------------------------------------------------
# jekyll
jekyll serve watch: "jekyll serve --watch"
jekyll build: "jekyll build"
jekyll: "jekyll "
#------------------------------------------------------
# image
image [magic] trim:
	"convert  -fuzz 1% -trim +repage "
	key(left:24)
image [magic] transparent:
	"convert  -fuzz 1% -transparent white "
	key(left:29)
rename PNG large: "rename 'png_large' 'png' *.png_large"
rename jay peg large: "rename 'jpg_large' 'jpg' *.jpg_large"