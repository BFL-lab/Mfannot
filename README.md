# MFannot

MFannot is a program able to perform annotation of mitochondrial and plastid genomes that requires little if any manual corrections.
It makes intense use of the RNA/intron detection tools as [HMMER](http://hmmer.org/), [exonerate](https://github.com/nathanweeks/exonerate), [erpin](https://bioinformatics.ca/links_directory/tool/9822/erpin) and others.

MFannot is particularly helpful with organelle genomes that contain lots of introns. Intron-exon boundaries are identified by a combination of intron splice rules and exon similarities, and are thus precise in most instances. The output of MFannot is listings of gene coordinates either in [Sequin format](https://www.ncbi.nlm.nih.gov/Sequin/), a format that can be directly loaded into NCBI sequence submission tools, or in [Masterfile](http://megasun.bch.umontreal.ca/ogmp/masterfile/intro.html) format (computer-parsible as well as human-readable; annotations embedded into the sequence).

This package is based on activities of the OGMP (i.e, priori to 2002).

## Install

**Note**: At this point the installation of MFannot was only tested on Unix system (Ubuntu and CentOS).
However, you can use the [Docker container](https://hub.docker.com/r/nbeck/mfannot) of MFannot to run it on MacOS and Windows.

#### BioPerl

MFannot is a PERL pipeline that use [BioPerl](http://bioperl.org/), so you need to install BioPerl first and at least install the [Bio::AlignIO](http://search.cpan.org/dist/BioPerl/Bio/AlignIO.pm) and all they dependancies.

#### External progams

MFannot is a pipeline that used some well know program, as BLAST, HMMER, exonerate and others.
Here is the list of all the program you need install on your system:

- Blast: to install Blast see the documentation on [NCBI website](http://www.ncbi.nlm.nih.gov/guide/howto/run-blast-local/).
- HMMER: to install HMMER see the documentation on [HMMER website](http://hmmer.org/download.html).
- Exonerate: to install Exonerate see the documentation of the following [github repo](https://github.com/nathanweeks/exonerate).
- Muscle: to install Muscle see the documentation [here](http://www.drive5.com/muscle/).
- EMBOSS: to install EMBOSS see the documentation [here](http://emboss.sourceforge.net/download/#Stable/).
- Erpin: to install Erpin see the documentation [here](http://rna.igmors.u-psud.fr/Software/erpin.php).
- tbl2asn: to install tbl2asn see the documentation [here](https://www.ncbi.nlm.nih.gov/genbank/tbl2asn2/)
- PirObject: to install this Perl library see the documetation [here](https://github.com/prioux/PirObject),

#### Internal programs

During the development of MFannot a lot of underlying software was developed in parallel, and so it needs to be installed as part of MFannot.

- PirModels: all the PirModels needed by umac, HMMsearchWC and other programs developped at OGMP, to install the PirModels see the documentation [here](https://github.com/BFL-lab/PirModels).
- flip:to install flip see the documentation [here](https://github.com/BFL-lab/flip)
- umac: to install umac see the documentation [here](https://github.com/BFL-lab/umac)
- HMMSearchWC: to install HMMSearchWC see the documentation [here](https://github.com/BFL-lab/HMMSearchWC)
- RNAfinder: to install RNAfinder see the documentation [here](https://github.com/BFL-lab/RNAfinder)
- mf2sqn: to install mf2sqn see the documentation [here](https://github.com/BFL-lab/mf2sqn)
- MFannot: to install MFannot see the documentation [here](https://github.com/BFL-lab/MFannot)

#### Data

MFannot need some data to run, you will find all the information about this data [here](https://github.com/BFL-lab/MFannot_data).

## Docker container

During the release process, we used a Docker container to test the installation. You can find this docker container [here](https://hub.docker.com/u/nbeck/mfannot) and used it in order to run MFannot locally if you do not want to install everything. 

If you want to see the process to install MFannot on Ubuntu14 you can take a look to [this Dockerfile](https://hub.docker.com/r/nbeck/mfannot/~/dockerfile/).

## Usage

In order to get the help page of MFannot you need to type `MFannot -h` in your terminal.

## Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) and [CONDUCT](CONDUCT.md) for details.

## Credits

- [All Contributors](https://github.com/BFL-lab/mfannot/graphs/contributors)

## License

GNU General Public License v3.0. Please see [License File](LICENSE.md) for more information.
