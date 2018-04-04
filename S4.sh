#!
for file in $(cd jellyfish_output ; ls -Al | awk '{print $9}')
do
 ~/Downloads/jellyfish-2.2.9/bin/jellyfish histo jellyfish_output/$file > jellyfish_output/hist_$file
done

