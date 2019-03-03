# Galaxy - BLAST+ suite
FROM bgruening/galaxy-sequence-tools:19.01

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND NCBI BLAST+ Suite

# Install deepTools
ADD blast_tools.yml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml
