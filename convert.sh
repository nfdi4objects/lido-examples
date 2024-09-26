#!/usr/bin/bash

[ -d lido2rdf ] || git clone https://github.com/nfdi4objects/lido-rdf-converter.git
(cd lido2rdf && git pull && make deps)

for xml in *.xml; do
   ttl=${xml/.xml/.ttl}
   echo $xml
   ./lido2rdf/.venv/bin/python ./lido2rdf/lido2rdf.py -m ./lido2rdf/lido2rdf.x3ml $xml > $ttl
done
