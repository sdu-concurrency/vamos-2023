rm -rf session_slides
mkdir session_slides
cd latex_template
pdflatex session_templates.tex
cp session_templates.pdf ..
pdflatex seminar_template.tex
cp seminar_template.pdf ..
cd ..
pdfseparate session_templates.pdf session_temp-%d.pdf
i=0
for f in session_temp-*.pdf
do
	i=$((i+1))
 	pdfunite seminar_template.pdf "$f" "session_slides/session_template-$i.pdf"
done
rm seminar_template.pdf
rm session_templates.pdf
rm session_temp-*.pdf