#!/bin/bash

pwd; hostname; date

nextflow run nf-core/rnaseq -r 3.14.0 \
-resume \
-profile docker \
--input samplesheet.csv \
#--outdir /mnt/c/Users/merge/rinnformatics-class/alldata/testdata/output_dir \
#--reads /mnt/c/Users/merge/rinnformatics-class/alldata/testdata/*.fastq.gz \
#--fasta /mnt/c/Users/merge/rinnformatics-class/genome_annotations/Mus-musculus/Gencode/M25/GRCm38.p6.genome.fa \
#--gtf /mnt/c/Users/merge/rinnformatics-class/genome_annotations/Mus-musculus/Gencode/M25/gencode.vM25.annotation.gtf \
--pseudo_aligner salmon \
--gencode \
--email merget_severin@web.de \
-c nextflow.config
