# Convert BCL to FASTQ using Illumina's bcl2fastq2 software
# 
# Will also make index fastq file as well without lane splitting.
# Can customize script to remove additional flags if needed.
# 
# Vincent Wu | Betts Lab
# 2019.07.18 (updated 2020.03.16)

# Parameters
# NOTE: MUST CUSTOMIZE TO INDIVDIAUL RUN...
RUN_DIR="/example/dir/bcl/"
OUT_DIR="/example/dir/fastq/"
N_THREADS="4"

# Load module on HPC
module load bcl2fastq2/v2.20.0.422

# Start run
echo "Starting bcl2fastq run"
bcl2fastq \
    --create-fastq-for-index-reads \
    --ignore-missing-positions \
    --ignore-missing-controls \
    --ignore-missing-filter \
    --ignore-missing-bcls \
    --no-lane-splitting \
    -r ${N_THREADS} -w ${N_THREADS} \
    -R ${RUN_DIR} \
    -o ${OUT_DIR} \

echo "Done"
make_fastq.sh (END)
