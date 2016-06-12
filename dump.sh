#!/bin/bash

spelldump en_us/en_US.dic en_us/en_US.aff wordforms-en.txt
spelldump dict-en-us-names-2008-10-12/en_USNames.dic dict-en-us-names-2008-10-12/en_USNames.aff wordforms-en-names.txt
spelldump dict-cs-2.0/cs_CZ.dic dict-cs-2.0/cs_CZ.aff wordforms-cz.txt
spelldump dict-sk/sk_SK/sk_SK.dic dict-sk/sk_SK/sk_SK.aff wordforms-sk.txt

iconv -f ISO-8859-2 -t ASCII//TRANSLIT wordforms-cz.txt | tr '[:upper:]' '[:lower:]' | sort | uniq > wordforms-cz.txt.tmp
cat wordforms-sk.txt | tr '[:upper:]' '[:lower:]' | sort | uniq > wordforms-sk.txt.tmp
iconv -f ISO-8859-1 -t ASCII//TRANSLIT wordforms-en.txt | tr '[:upper:]' '[:lower:]' | sort | uniq > wordforms-en.txt.tmp
iconv -f ISO-8859-1 -t ASCII//TRANSLIT wordforms-en-names.txt | tr '[:upper:]' '[:lower:]' | sort | uniq > wordforms-en-names.txt.tmp

for foo in wordforms-*.txt.tmp
do
	./uniq.php $foo > `echo $foo | sed "s/\.tmp$//"` && rm $foo
done
