#!/usr/bin/env bash

module load bowtie2

bowtie2-build <REFERENCE_FILE_2_INDEX>.fasta <INDEX_BASENAME>

bowtie2 -p 4 \
-x <INDEX_BASENAME> \
-1 <NAME_OF_READ1>.fastq \
-2 <NAME_OF_READ2>.fastq \
-S <NAME_OF_OUTPUT_FILE>.sam


#### submit job to class queue as "run_script this_script_name"  ####
#### and request 4 CPU, 2:00:00 of run time and 4gb of memory    ####
