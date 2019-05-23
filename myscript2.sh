#!/bin/bash
echo "Hello world"

 formatdb -p F -o T -i Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.cds.all.fa
msbar -sequence 7.fa -count 160 -point 4 -block 0 -codon 0 -outseq mysample_mutated.fa
blast2 -p blastn -e 0.001 -m8 -d Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.cds.all.fa -i mysample_mutated.fa
