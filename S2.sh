#!
cd raw_reads 
for file in $(cd ~/Downloads/Project3/raw_reads ; ls -Al | awk '{print $9}')
do cat $file | paste - - - - | sed 's/^@/>/g'| cut -f1-2 | tr '\t' '\n' > ~/Downloads/Project3/fastas/extracted_$file.fasta
done
