#!/bin/bash

echo "Ahoj" | fold -w1 | nl -w1 -s';' > slovo.txt

tr 'A-Z' 'a-z' < slovo.txt > slovo_mensi.txt

sort -t';' -k2,2 slovo.txt > slovo_sorted.txt

#join -t';' -1 2 -2 1 slovo_sorted.txt hlaskovaci_abecdeda.txt > spojeno.txt

#seřadit do 3.sloupce
#sort -t';' -k2,2n spojeno.txt > konecne_spojeno.txt

#pouze 2 sloupec
cut -d';' -f3 konecne_spojeno.txt

