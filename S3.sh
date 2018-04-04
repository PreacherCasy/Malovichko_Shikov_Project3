#!
for file in $(cd fastas ; ls -Al | awk '{print $9}')
do
 ~/Downloads/jellyfish-2.2.9/bin/jellyfish count -m 31 -s 100M -t 10 -C  -o  ~/Downloads/Project3/jellyfish_output/results_$file.jf fastas/$file
~/Downloads/jellyfish-2.2.9/bin/jellyfish histo 
done
