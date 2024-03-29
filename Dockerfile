FROM ubuntu:18.04

# File Author / Maintainer MAINTAINER
LABEL author="Natacha Beck <natabeck@gmail.com>"

RUN apt-get update

# Install requested tools
RUN apt-get install -y git \
                       gcc-multilib \
                       build-essential \
                       apt-utils \
                       perl \
                       expat \
                       libexpat-dev \
                       cpanminus \
                       wget \
                       libgd-dev \
                       automake \
                       autotools-dev \
                       libxml-dom-xpath-perl \
                       libidn11 \
                       libglib2.0-dev


############################
# Install perl dependency  #
############################
RUN cpanm XML::DOM
RUN cpanm XML::DOM::XPath
RUN cpanm LWP::UserAgent.pm
RUN cpanm GD
RUN cpanm Bio::AlignIO

###########################
# Install external progam  #
############################
# Create a directory for all git directories
RUN mkdir git_repositories

# Install Blast
RUN apt-get install -y ncbi-blast+

# Install HMMER
RUN apt-get install -y hmmer

# Install Exonerate
RUN apt-get install -y libglib2.0-dev
RUN cd /git_repositories
RUN git clone https://github.com/nathanweeks/exonerate.git; cd exonerate; git checkout v2.4.0; ./configure; make; make check;autoreconf -f -i; make install
RUN cd ..

# Install Muscle
RUN wget -L http://www.drive5.com/muscle/downloads3.8.31/muscle3.8.31_i86linux32.tar.gz; tar xzvf muscle3.8.31_i86linux32.tar.gz;mv muscle3.8.31_i86linux32 /usr/local/bin/muscle; rm -rf /muscle3.8.31_i86linux32.tar.gz

# Install EMBOSS
RUN apt-get install -y emboss

# Install Erpin
RUN wget -L http://rna.igmors.u-psud.fr/download/Erpin/erpin5.5.4.serv.tar.gz; tar xzvf erpin5.5.4.serv.tar.gz; cp erpin5.5.4.serv/bin/erpin /usr/local/bin/

# Install cmsearch
RUN wget http://eddylab.org/infernal/infernal-1.1.4-linux-intel-gcc.tar.gz; tar xzvf infernal-1.1.4-linux-intel-gcc.tar.gz; cp infernal-1.1.4-linux-intel-gcc/binaries/cmsearch /usr/local/bin/

# Install tbl2asn
RUN mkdir /tbl2asn; cd /tbl2asn; wget https://anaconda.org/bioconda/tbl2asn/25.7/download/linux-64/tbl2asn-25.7-0.tar.bz2; tar jxvf tbl2asn-25.7-0.tar.bz2; chmod 755 bin/tbl2asn; cp bin/tbl2asn /usr/local/bin/tbl2asn


############################
# Install internal progam #
############################

# Go in git_repositories
RUN cd /git_repositories

# Install PirObject
RUN git clone https://github.com/prioux/PirObject.git; cp PirObject/lib/PirObject.pm /etc/perl/;

# Install all PirModels
RUN git clone https://github.com/BFL-lab/PirModels.git /PirModels

# Install flip
RUN git clone https://github.com/BFL-lab/flip.git; cd flip/src/; gcc -o /usr/local/bin/flip flip.c;

# Install umac
RUN git clone https://github.com/BFL-lab/umac.git; cp umac/umac /usr/local/bin/

# Install HMMsearchWC
RUN git clone https://github.com/BFL-lab/HMMsearchWC.git; cp HMMsearchWC/HMMsearchCombiner /usr/local/bin/; cp HMMsearchWC/HMMsearchWrapper /usr/local/bin/

# Install CMsearchW
RUN git clone https://github.com/BFL-lab/CMsearchW.git; cp CMsearchW/CMsearchWrapper /usr/local/bin/

# Install RNAfinder
RUN git clone https://github.com/BFL-lab/RNAfinder.git; cp RNAfinder/RNAfinder /usr/local/bin/; cp RNAfinder/DOT_RNAfinder.cfg /.RNAfinder.cfg

# Install mf2sqn
RUN git clone https://github.com/BFL-lab/mf2sqn.git; cp mf2sqn/mf2sqn /usr/local/bin/; cp mf2sqn/qualifs.pl /usr/share/perl5/

# Install grab-fasta
RUN git clone https://github.com/BFL-lab/grab-fasta.git; cp grab-fasta/grab-fasta /usr/local/bin/;cp grab-fasta/grab-seq /usr/local/bin/

# Install MFannot
RUN git clone https://github.com/BFL-lab/mfannot.git; cd /mfannot/; git fetch --tags; cd /;cp -r mfannot/examples /

################
# Install data #
################
# Install data
RUN git clone https://github.com/BFL-lab/MFannot_data.git

#Install BLAST matrix
RUN mkdir BLASTMAT; cd BLASTMAT; wget  ftp://ftp.ncbi.nlm.nih.gov/blast/matrices/* ; cd ..

####################
# Set ENV variable #
####################

ENV RNAFINDER_CFG_PATH /
ENV MF2SQN_LIB /mf2sqn/lib/
ENV MFANNOT_LIB_PATH /MFannot_data/protein_collections/
ENV MFANNOT_EXT_CFG_PATH /MFannot_data/config
ENV MFANNOT_MOD_PATH /MFannot_data/models/
ENV BLASTMAT /BLASTMAT/
ENV EGC /MFannot_data/EGC/
ENV ERPIN_MOD_PATH /MFannot_data/models/Erpin_models/
ENV PIR_DATAMODEL_PATH /PirModels
ENV PATH="/mfannot:${PATH}"
