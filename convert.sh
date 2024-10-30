#!/usr/bin/bash

[ -d lido2rdf ] || git clone https://github.com/nfdi4objects/lido-rdf-converter.git
(cd lido2rdf && git pull && make deps) >/dev/null

for xml in *.xml; do
    tmp=${xml/.xml/.tmp}
    ttl=${xml/.xml/.ttl}
    echo -n $xml
    ./lido2rdf/.venv/bin/python ./lido2rdf/lido2rdf.py -m ./lido2rdf/lido2rdf.x3ml $xml 2>/dev/null > $tmp
    if [ $? -eq 0 ]; then
       mv $tmp $ttl
       echo " OK"
    else
       echo " FAIL"
       rm $tmp
    fi
done
