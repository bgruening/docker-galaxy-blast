# Galaxy - BLAST+ suite
#
# VERSION       0.1

FROM bgruening/galaxy-stable

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND NCBI BLAST+ Suite

# Install deepTools
ADD blast_tools.yml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml


# Mark folders as imported from the host.
VOLUME ["/export/", "/data/", "/var/lib/docker"]

# Expose port 80 (webserver), 21 (FTP server), 8800 (Proxy), 9002 (supervisord)
EXPOSE :80
EXPOSE :21
EXPOSE :8800
EXPOSE :9002

# Autostart script that is invoked during container start
CMD ["/usr/bin/startup"]
