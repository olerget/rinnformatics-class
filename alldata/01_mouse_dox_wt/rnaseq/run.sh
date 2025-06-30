#!/bin/bash

pwd; hostname; date

nextflow run nf-core/rnaseq -r 3.14.0 \
-resume \
-profile docker \
--input samplesheet.csv \
#--outdir /scratch/Shares/rinn/Kit/class_RNASeq/output_dir \
#--reads /scratch/Shares/rinn/ML/mouse_wt_long_timecourse/*{_R1,_R2}.fastq.gz \
#--fasta /scratch/Shares/rinn/ML/DESeq2/GENOMES/M25/GRCm38.p6.genome.fa \
#--gtf /scratch/Shares/rinn/ML/DESeq2/GENOMES/M25/gencode.vM25.annotation.gtf \
--pseudo_aligner salmon \
--gencode \
--email merget_severin@web.de \
-c nextflow.config
