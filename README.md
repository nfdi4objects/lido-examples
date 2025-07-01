# LIDO Examples

This repositories contains examples of [LIDO](http://www.lido-schema.org/) XML files for analysis of data quality issues and conversion of LIDO into other formats.

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

If the repository has already been cloned without `--recursive`, call in the woring directory:

~~~sh
git submodule update --init
~~~

## Usage

### Validation

Running `make` will validate all `.xml` examples against the XML Schema (LIDO 1.1).

### Conversion

To convert LIDO to RDF (experimental) run `make rdf` or `./convert.sh`.

