# MFannot

MFannot is a program able to perform annotation of mitochondrial and plastid genomes that requires little if any manual corrections (replacing manual annotation of often many days to a few minutes ...).
It makes intense use of the RNA/intron detection tools as [HMMER](http://hmmer.org/), [exonerate](https://github.com/nathanweeks/exonerate), [erpin](https://bioinformatics.ca/links_directory/tool/9822/erpin) and others.

MFannot is particularly helpful with organelle genomes that contain lots of introns. Intron-exon boundaries are identified by a combination of intron splice rules and exon similarities, and are thus precise in most instances. The output of MFannot is listings of gene coordinates either in XML format, a format that can be directly loaded into NCBI sequence submission tools, or in masterfile format (computer-parsible as well as human-readable; annotations embedded into the sequence).

## Install

At this point the installation of MFannot was only done in Unix system (Ubuntu and CentOS). So we cannot guaranty that is possible to install MFannot can be installed on MacOS. 
However, you can use the [Docker container](XXX) of MFannot to run it on MacOS and Windows.

#### BioPerl

MFannot is a PERL pipeline that use [BioPerl](http://bioperl.org/), so you need to install BioPerl first and at least install the [Bio::AlignIO](http://search.cpan.org/dist/BioPerl/Bio/AlignIO.pm) and all they dependancies.

#### External progams

MFannot is a pipeline that used some well know program, as blast, HMMER, exonerate and others.
Here is the list of all the program you need install on your system:

- Blast: to install Blast see the documentation on [NCBI website](http://www.ncbi.nlm.nih.gov/guide/howto/run-blast-local/).
- HMMER: to install HMMER see the documentation on [HMMER website](http://hmmer.org/download.html).
- Exonerate: to install Exonerate see the documentation of the following [github repo](https://github.com/nathanweeks/exonerate).
- Muscle: to install Muscle see the documentation [here](http://www.drive5.com/muscle/).
- EMBOSS: to install EMBOSS see the documentation [here](http://emboss.sourceforge.net/download/#Stable/).
- PirObject: to install this Perl library see the documetation of the following [github repo](https://github.com/prioux/PirObject),

#### Internal programs

## Docker container and file

During the release process, we used a Docker container to test the installation. You can find this docker container [here](XXX) and used it in order to run MFannot locally if you do not want to install everything. 
XXX: add documetation to run the docker container.

## Usage


## Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) and [CONDUCT](CONDUCT.md) for details.

## Credits

- [All Contributors](https://github.com/natacha-beck/bf-umac/graphs/contributors)

## License

GNU General Public License v3.0. Please see [License File](LICENSE.md) for more information.



# mfannotStep to install: 

1. git clone https://github.com/natacha-beck/mfannot.git
2. Download and install http://sourceforge.net/projects/pirobject/
3. Install perl lib: 
  1.  sudo  cpan LWP::UserAgent
  2.  sudo cpan Bio::SeqIO
  3.  sudo  cpan Bio::AlignIO
