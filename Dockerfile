# Galaxy - BLAST+ suite
#
# VERSION       0.1

FROM bgruening/galaxy-stable

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND NCBI BLAST+ Suite

WORKDIR /galaxy-central

# Install NCBI Blast+

RUN install-repository \
    "--url https://toolshed.g2.bx.psu.edu/ -o devteam --name blast_datatypes" \
    "--url https://toolshed.g2.bx.psu.edu/ -o peterjc --name blastxml_to_top_descr --panel-section-name BLAST+" \
    "--url https://toolshed.g2.bx.psu.edu/ -o peterjc --name blast_rbh --panel-section-name BLAST+" \
    "--url https://toolshed.g2.bx.psu.edu/ -o iuc --name package_blast_plus_2_2_29" \
    "--url https://toolshed.g2.bx.psu.edu/ -o devteam --name ncbi_blast_plus --panel-section-name BLAST+" \
    "--url https://toolshed.g2.bx.psu.edu/ -o devteam --name intersect --panel-section-id textutil" \
    "--url https://toolshed.g2.bx.psu.edu/ -o devteam --name column_maker --panel-section-id textutil"

# install workflows
RUN install-repository \
    "--url https://toolshed.g2.bx.psu.edu/ -o bgruening --name find_three_genes_located_nearby_workflow" \
    "--url https://toolshed.g2.bx.psu.edu/ -o bgruening --name find_genes_located_nearby_workflow"

# The BLAST2GO database needs to be mounted in manually
RUN install-repository "--url http://toolshed.g2.bx.psu.edu/ -o peterjc --name blast2go --panel-section-name BLAST+"


# Mark folders as imported from the host.
VOLUME ["/export/", "/data/", "/var/lib/docker"]

# Expose port 80 (webserver), 21 (FTP server), 8800 (Proxy), 9002 (supervisord)
EXPOSE :80
EXPOSE :21
EXPOSE :8800
EXPOSE :9002

# Autostart script that is invoked during container start
CMD ["/usr/bin/startup"]
