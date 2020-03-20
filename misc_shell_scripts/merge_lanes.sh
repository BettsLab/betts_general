# Merge single-end sequencing lanes from Illumina run
# 
# Vincent Wu | Betts Lab
# 2020.03.20

# USER SETTINGS
# set directory of raw fastq.gz files (all lanes should be in the same folder)
raw_dir="/home/user/data/my_fastq_dir"

# get unique samples
# note that this code only covers read1 and lanes 1-4 only. can adjust the regex as needed to cover more lanes.
ls -1 $raw_dir | grep -oP --color=never '(.*)(?=_L00[1-4]_R1_001.fastq.gz)' | sort | uniq > samples_condensed.txt

# merge lanes and write out a concantenated fastq.gz file
while read smpl; do
  cat ${raw_dir}/${smpl}* > concat_raw/${smpl}.fastq.gz
done < samples_condensed.txt