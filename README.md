
[![DOI](https://zenodo.org/badge/5466/bgruening/docker-galaxy-blast.svg)](http://dx.doi.org/10.5281/zenodo.15781)
[![Build Status](https://travis-ci.org/bgruening/docker-galaxy-blast.svg?branch=master)](https://travis-ci.org/bgruening/docker-galaxy-blast)
![docker pulls](https://img.shields.io/docker/pulls/bgruening/galaxy-blast.svg) ![docker stars](https://img.shields.io/docker/stars/bgruening/galaxy-blast.svg)


# Galaxy Image for the BLAST+ suite

A complete and production ready Galaxy instance with installed BLAST+ tools.

 * [Installed tools](#installed-tools)
 * [Requirements](#requirements)
 * [Usage](#usage)
 * [Using large external BLAST databases](#using-large-external-blast-databases)
 * [Requirements](#requirements)
 * [Contributers](#contributers)
 * [Support & Bug Reports](#support--bug-reports)
 * [Licence (MIT)](#license-mit)


# Installed tools

 * [BLAST+](http://blast.ncbi.nlm.nih.gov)

# Requirements

 - [Docker](https://docs.docker.com/installation/) for Linux / Windows / OSX
 - [Kitematic](https://kitematic.com/) for Windows / OS-X (Optional)

# Usage

To launch:

```
docker run -i -t -p 8080:80 bgruening/galaxy-blast
```

For more details about this command line or specific usage, please consult the
[`README`](https://github.com/bgruening/docker-galaxy-stable/blob/master/README.md) of the main Galaxy Docker image, on which the current image is based.


# Reproducibility of your search results


BLAST databases are updated daily and are not versioned. This is a general problem for reproducibility of search results.
In Galaxy we track the program version, all settings and the input files. The underlying database can be tracked but this is usually 
very storage expensive. Note that the large NCBI BLAST databases exceeds 100 GB in size.
To enable 100% reproducibility you can simply create your own BLAST datbase with Galaxy. Download your database as FASTA file
and use the tool `NCBI BLAST+ makeblastdb` to convert your FASTA file to a proper BLAST database. These steps are reproducibly, with all settings and inputs.

If you want to use the precalculated BLAST databases from the [NCBI FTP server](ftp://ftp.ncbi.nlm.nih.gov/blast/db/) you can
configure your BLAST Galaxy instance to use those. Please have a look at [Using large external BLAST databases](#large_databases). We have plans to make this a lot simples by using Galaxy *data managers*. You can track to progess here: https://github.com/peterjc/galaxy_blast/issues/22

Please understand that we cannot ship the NCBI BLAST databases by default in this Docker container, as we try to keep the image as small as possible.


# Using large external BLAST databases


You can get BLAST databases directly from the [NCBI server](ftp://ftp.ncbi.nlm.nih.gov/blast/db/) and include them into your Galaxy docker container.

 - Download your databases from [ftp://ftp.ncbi.nlm.nih.gov/blast/db/](ftp://ftp.ncbi.nlm.nih.gov/blast/db/).
   You can use the NCBI suggested [perl script](http://www.ncbi.nlm.nih.gov/blast/docs/update_blastdb.pl) to automatize this step.
 - Store all your BLAST databases in one directory, for example `/galaxy_store/data/blast_databases/`.
 - Start your Galaxy container with `-v /galaxy_store/data/blast_databases/:/data/` to have access your databases inside of your container.
 - Start your Galaxy container with ``-v /home/user/galaxy_storage/:/export/`` to export all config files to your host operating system,
 - Modify your `blast*.loc` files under `/home/user/galaxy_storage/galaxy-central/tool-data/blast*.loc` on your host, or under `/export/galaxy-central/tool-data/blast*.loc` from within your container.
 - You need to add the paths to your blast databases. A path points to the BLAST databases accessible from within Docker and looks like `/data/swissprot/swissprot`.
 - Restart your Galaxy instance, for example with ```docker exec <container name> supervisorctl restart galaxy:```

From now on you should see predifined BLAST databases in your Galaxy User Interface if you choose `Locally installed BLAST database`.



# Contributers

 - Björn Grüning (@bgruening)
 - Peter Cock (@peterjc)
 

# Support & Bug Reports

You can file an [github issue](https://github.com/bgruening/docker-galaxy-blast/issues) or ask us on the [Galaxy development list](http://lists.bx.psu.edu/listinfo/galaxy-dev).


# Licence (MIT)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
