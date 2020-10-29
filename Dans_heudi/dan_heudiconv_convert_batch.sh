#!/bin/sh
source /home/despoB/dlurie/.bashrc;
source activate legacy;
SUB_ID="${SGE_TASK}";
cd /home/despoB/dlurie/Projects/despolab_lesion/code/patients-dicom_conversion;
heudiconv \
    -d /home/despoB/lesion/data/original/dicom/{subject}/*/*.dcm \
    -s $SUB_ID \
    -f /home/despoB/dlurie/Software/heudiconv/heuristics/uc_bids.py \
    -c dcm2niix \
    -o /home/despoB/lesion/data/original/bids \
    --bids \
    --minmeta; 
END_TIME=$(date);
echo "DICOM file conversion attempt finished at $END_TIME";


