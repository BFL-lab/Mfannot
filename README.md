# MFannot

MFannot is a program able to annotate mitochondrial and plastid genomes. 
It is a PERL wrapper around a set of external independent annotation tools.

It makes intense use of RNA/intron detection tools as [HMMER](http://hmmer.org/), [exonerate](https://github.com/nathanweeks/exonerate), [erpin](https://bioinformatics.ca/links_directory/tool/9822/erpin) and others.

MFannot is particularly helpful with organelle genomes that contain lots of introns. Intron-exon boundaries are identified by a combination of intron splice rules and exon similarities, and are thus precise in most instances.

The output of MFannot is listings of gene coordinates either in [Sequin format](https://www.ncbi.nlm.nih.gov/Sequin/), a format that can be directly loaded into NCBI sequence submission tools, or in [Masterfile](http://megasun.bch.umontreal.ca/ogmp/masterfile/intro.html) format (computer-parsible as well as human-readable; annotations embedded into the FASTA sequence).

This package is based on activities of the OGMP (Organelle Genome Megasequencing Project, Département de Biochimie, Université de Montréal, circa 1990-1998) and further developed since then by the labs of [B.F. Lang](https://biochimie.umontreal.ca/en/department/professors/franz-bernd-lang/) and [G. Burger](https://biochimie.umontreal.ca/en/department/professors/gertraud-burger/).

## Installation

**Note**: At this point the installation of MFannot is only possible on Unix systems (e.g. Ubuntu and CentOS).

#### BioPerl

MFannot is a PERL pipeline that use [BioPerl](http://bioperl.org/), so you need to install BioPerl first and at least install the [Bio::AlignIO](http://search.cpan.org/dist/BioPerl/Bio/AlignIO.pm) and all their dependancies.

#### External programs

MFannot is a pipeline that use some well known programs, such as BLAST, HMMER, exonerate and others.
Here is the list of all the programs you need install on your system:

- Blast: to install Blast see the documentation at the [NCBI website](http://www.ncbi.nlm.nih.gov/guide/howto/run-blast-local/).
- HMMER: to install HMMER see the documentation at the [HMMER website](http://hmmer.org/download.html).
- Exonerate: to install Exonerate see the documentation at the following [GitHub repo](https://github.com/nathanweeks/exonerate).
- Muscle: to install Muscle see the documentation [here](http://www.drive5.com/muscle/).
- EMBOSS: to install EMBOSS see the documentation [here](http://emboss.sourceforge.net/download/#Stable/).
- Erpin: to install Erpin see the documentation [here](http://rna.igmors.u-psud.fr/Software/erpin.php).
- tbl2asn: to install tbl2asn see the documentation [here](https://www.ncbi.nlm.nih.gov/genbank/tbl2asn2/)
- PirObject: to install this Perl library see the documentation in this [GitHub repo](https://github.com/prioux/PirObject),

#### Internal programs

Further external software programs and librairies are also needed, and were developed internally in parallel to MFannot:

- PirModels: all the PirModels needed by umac, HMMsearchWC and other programs developped at OGMP, to install the PirModels see the documentation in this [GitHub repo](https://github.com/BFL-lab/PirModels).
- flip:to install flip see the documentation in this [GitHub repo](https://github.com/BFL-lab/flip)
- umac: to install umac see the documentation in this [GitHub repo](https://github.com/BFL-lab/umac)
- HMMSearchWC: to install HMMSearchWC see the documentation in this [GitHub repo](https://github.com/BFL-lab/HMMSearchWC)
- RNAfinder: to install RNAfinder see the documentation in this [GitHub repo](https://github.com/BFL-lab/RNAfinder)
- mf2sqn: to install mf2sqn see the documentation in this [GitHub repo](https://github.com/BFL-lab/mf2sqn)
- MFannot: to install MFannot see the documentation in this [GitHub repo](https://github.com/BFL-lab/MFannot)

#### Static Data

MFannot need some static data files to run; these are model files for splice sites, reference protein sequences, HMM models, etc.
These files are all available as a single bundle in this [GitHub repo](https://github.com/BFL-lab/MFannot_data).

## Docker container

The entire software package, including data files, is available in a Docker container. You can find this docker container on [DockerHub](https://hub.docker.com/r/nbeck/mfannot/) and use it in order to run MFannot locally if you do not want to install everything. 

The process to install MFannot on Ubuntu14 within a Docker image is documented in the [Dockerfile] present in this repository.

## Usage

In order to get the help page of MFannot you need to type `mfannot -h` in your terminal.

## Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) and [CONDUCT](CONDUCT.md) for details.

## Credits

- [All Contributors](https://github.com/BFL-lab/mfannot/graphs/contributors)

## License

GNU General Public License v3.0. Please see [License File](LICENSE.md) for more information.
