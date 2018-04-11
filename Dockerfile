# Galaxy - BLAST+ suite
#
# VERSION       0.1

FROM quay.io/bgruening/galaxy:18.01

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND NCBI BLAST+ Suite

# Install deepTools
ADD blast_tools.yml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml
