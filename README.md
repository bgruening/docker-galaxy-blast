
[![DOI](https://zenodo.org/badge/5466/bgruening/docker-galaxy-blast.svg)](http://dx.doi.org/10.5281/zenodo.15781)
[![Build Status](https://travis-ci.org/bgruening/docker-galaxy-blast.svg?branch=master)](https://travis-ci.org/bgruening/docker-galaxy-blast)
![docker pulls](https://img.shields.io/docker/pulls/bgruening/galaxy-blast.svg) ![docker stars](https://img.shields.io/docker/stars/bgruening/galaxy-blast.svg)


Galaxy Image for the BLAST+ suite
=================================

A complete and production ready Galaxy instance with installed BLAST+ tools.

 * [Installed tools](#installed-tools)
 * [Requirements](#requirements)
 * [Usage](#usage)
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

# Contributers

 - Bjoern Gruening
 

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
