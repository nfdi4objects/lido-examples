# LIDO Examples

This repositories contains examples of LIDO XML files to be converted to graphs in NFDI4Objects.
The examples act as unit test for existing conversions and for discussion proper mapping of
LIDO to CIDOC-CRM in particular.

## Examples

- `LIDO-Example_FMobj00154983-LaPrimavera.xml` and `LIDO-Example_FMobj20344012-Fontana_del_Moro.xml` LIDO 1.0 example records from LIDO homepage
- `LIDO-v1.1-Example_FMobj00154983-LaPrimavera.xml` and `LIDO-v1.1-Example_FMobj20344012-Fontana_del_Moro.xml` LIDO 1.1 example records from LIDO homepage
- `LIDO-Example_FMobj00154983-LaPrimavera.xml` and `LIDO-Example_FMobj20344012-Fontana_del_Moro.xml` LIDO 1.0 example records from LIDO homepage
- `minimaldatensatz.xml` example from [Minimaldatensatz-Empfehlung für Museen und Sammlungen (v1.0.1)](https://wiki.deutsche-digitale-bibliothek.de/pages/viewpage.action?pageId=120422678) 
- `kenom_oai_chunk20.xml` sample records from KENOM

## Installation

Clone with git submodules to also get LIDO XML Schemas from [a repository of its own](https://github.com/nfdi4objects/lido-schema):

~~~sh
git clone --recursive https://github.com/nfdi4objects/lido-examples.git
~~~

## Usage

Running `make` will validate all `.xml` examples against the XML Schema.

To convert LIDO to RDF (experimental) run `make rdf` or `./convert.sh`.

