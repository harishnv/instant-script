#!/bin/bash



echo "Type the project code"
read project_name

echo "Type the old Root directory name"

read old_dir


mv $old_dir $project_name

cd $project_name

pwd 
find . -name 'PRO*'
#find . -name 'PRO*'|sed  -i s/.*/$project_name/
rename -v s/.*/$project_name\_PROJECTBACK/ PRO*
rename -v s/.*/$project_name\_DETAILS/  DET*

cd $project_name\_DETAILS
###rename -v s/.*/$project_name\_Promo/ 1_*

rename -v s/^[^_]*/$project_name/ *

cd $project_name\_Promo

rm  *.* 
rename -v s/.*/$project_name\_Promo_PRJBK/ Co*

cd ..
###rename -v s/.*/$project_name\_Link/ 2_*

cd $project_name\_Link

rename -v s/.*/$project_name\_Weblink.txt/ *_*.txt
cd ..

###rename -v s/.*/$project_name\_Syllabus/ 3_*

cd $project_name\_Syllabus 
rename -v s/.*/$project_name\_Syllabus.html/ *.html
rename -v s/.*/$project_name\_Syllabus.doc/ *.doc

cd ..

###rename -v s/.*/$project_name\_Slides/ 4_*

cd $project_name\_Slides 
rename -v s/.*/$project_name\_Slides_Full/ *_Full
rename -v s/.*/$project_name\_Slides_Parts/ *_parts

cd $project_name\_Slides_Full 
rename -v s/.*/$project_name\_PDF/ PDF
rename -v s/.*/$project_name\_PNG/ PNG

cd $project_name\_PDF

rename -v s/^[^_]*/$project_name/ *.pdf

cd ..

cd $project_name\_PNG 
rename -v s/^[^_]*/$project_name/ *

cd ../../$project_name\_Slides_Parts

rename -v s/.*/$project_name\_PDF/ PDF
rename -v s/.*/$project_name\_PNG/ PNG

cd $project_name\_PDF 
rename -v s/^[^_]*/$project_name/ *


rename -v s/^[^_]*/$project_name/ *

cd ../$project_name\_PNG
rename -v s/^[^_]*/$project_name/ *

cd ../../../$project_name\_Index\ Terms/


rename -v s/^[^_]*/$project_name/ *

cd $project_name\_Original 
rename -v s/.*/$project_name\_Index_of_keywords.pdf/ *.pdf

cd ../$project_name\_Recreated/
rename -v s/.*/$project_name\_INDEX\ TERMS_recreated.xlsx/ *.xlsx

cd ../../

mkdir $project_name\_Review 

cd $project_name\_Pre-Requisite
rename -v s/.*/$project_name\_p.html/ *.html
rename -v s/.*/$project_name\_Pre.doc/ *.doc

cd ../$project_name\_Overview/

rename -v s/.*/$project_name\_p.html/ *.html
rename -v s/.*/$project_name\_Pre.docx/ *.docx

cd ../$project_name\_Reference/

rename -v s/.*/$project_name\_r.html/ *.html
rename -v s/.*/$project_name\_References.docx/ *.docx

cd ../$project_name\_Assignment/

rename -v s/.*/$project_name\_Questions/ Ques*
rename -v s/.*/$project_name\_Answers/ Ans*

cd $project_name\_Answers 
rename -v s/^[^\(]*/$project_name/ *

cd ../$project_name\_Questions
rename -v s/^[^\(]*/$project_name/ *

cd ../../$project_name\_Thumbnails/

rename -v s/.*/$project_name\_Thumbnails.xlsx/ *.xlsx
rename -v s/.*/$project_name\_Thumbnails/ *[1-9]

cd $project_name\_Thumbnails/
rename -v s/^[^_]*/$project_name/ *











