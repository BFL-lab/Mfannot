# MFannot


MFannot is a program for the annotation of mitochondrial and plastid genomes. 
It is a PERL wrapper around a set of diverse, external independent tools.

It makes intense use of RNA/intron detection tools including [HMMER](http://hmmer.org/), [Exonerate](https://github.com/nathanweeks/exonerate), [Erpin](https://bioinformatics.ca/links_directory/tool/9822/erpin) and others.

MFannot is particularly helpful with organelle genomes that contain lots of introns. Intron-exon boundaries are identified by a combination of secondary structure, intron splice rules and exon similarities, and are thus precise in most instances.
Note that not all introns may be detected by MFannot, which requires expert manual curation/completion of gene structure annotations before GenBank submission.

The output of MFannot is a listings of gene coordinates either in [Sequin format](https://www.ncbi.nlm.nih.gov/Sequin/), a format that can be directly loaded into NCBI's sequence submission tools, or in [Masterfile](http://megasun.bch.umontreal.ca/ogmp/masterfile/intro.html) format (computer-parsible as well as human-readable; annotations embedded into the FASTA sequence).

This package is based on activities of the OGMP (Organelle Genome Megasequencing Project, Département de Biochimie, Université de Montréal, circa 1990-1998) and further developed since then by the labs of [B.F. Lang](https://biochimie.umontreal.ca/en/department/professors/franz-bernd-lang/) and [G. Burger](https://biochimie.umontreal.ca/en/department/professors/gertraud-burger/).

## Installation

**Note**: At this point the installation of MFannot is only possible on Unix systems (e.g. Ubuntu and CentOS).

#### BioPerl

MFannot is a PERL pipeline that use [BioPerl](http://bioperl.org/), so you need to install BioPerl first and at least install the [Bio::AlignIO](http://search.cpan.org/dist/BioPerl/Bio/AlignIO.pm) and all their dependencies.

#### External programs

MFannot uses some well known programs, taht need to be installed on your system::

- Blast (requires version 2.2.26 and version >= 2.2.27+): to install Blast see the documentation at the [NCBI website](http://www.ncbi.nlm.nih.gov/guide/howto/run-blast-local/).
  * tested on version 2.2.26 and 2.2.31+
- HMMER: to install HMMER see the documentation at the [HMMER website](http://hmmer.org/download.html).
  * tested on version 3.2.1
- Exonerate: to install Exonerate see the documentation at the following [GitHub repo](https://github.com/nathanweeks/exonerate).
  * tested on version 2.2.0
- Muscle: to install Muscle see the documentation [here](http://www.drive5.com/muscle/).
  * tested on version muscle-3.8.1551
- EMBOSS: to install EMBOSS see the documentation [here](http://emboss.sourceforge.net/download/#Stable/).
  * tested on version 6.6.0
- Erpin: to install Erpin see the documentation [here](http://rna.igmors.u-psud.fr/Software/erpin.php).
  * tested on version 5.5.4.serv
- tbl2asn: to install tbl2asn see the documentation [here](https://www.ncbi.nlm.nih.gov/genbank/tbl2asn2/)
- PirObject: to install this Perl library see the documentation in this [GitHub repo](https://github.com/prioux/PirObject),

#### Internal programs

Further external programs and libraries that were developed in parallel to MFannot:

- PirModels: all the PirModels needed by umac, HMMsearchWC and other programs developped at OGMP, to install the PirModels see the documentation in this [GitHub repo](https://github.com/BFL-lab/PirModels).
- Flip:to install Flip see the documentation in this [GitHub repo](https://github.com/BFL-lab/flip)
- Umac: to install Umac see the documentation in this [GitHub repo](https://github.com/BFL-lab/umac)
- HMMSearchWC: to install HMMSearchWC see the documentation in this [GitHub repo](https://github.com/BFL-lab/HMMSearchWC)
- RNAfinder: to install RNAfinder see the documentation in this [GitHub repo](https://github.com/BFL-lab/RNAfinder)
- Mf2sqn: to install Mf2sqn see the documentation in this [GitHub repo](https://github.com/BFL-lab/mf2sqn)
- MFannot: to install MFannot see the documentation in this [GitHub repo](https://github.com/BFL-lab/MFannot)

#### Static Data

MFannot needs some static data files to run; these contain data defining splice sites, reference protein sequences, HMM models, etc.
These files are all available as a single bundle in this [GitHub repo](https://github.com/BFL-lab/MFannot_data).

#### BLAST matrices

Download BLAST matrices from the ncbi `ftp://ftp.ncbi.nlm.nih.gov/blast/matrices/*` (eg: `wget -r -np -nd -P /path/to/mfannot/blast_matrices ftp://ftp.ncbi.nlm.nih.gov/blast/matrices`) 
and set the environment variable `BLASTMAT` to point to the directory where you have download the matrices.  


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
