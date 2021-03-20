FROM registry.fedoraproject.org/fedora:latest

RUN echo -e "\n# enable fastest mirror\nfastestmirror=True" >> /etc/dnf/dnf.conf && dnf -y upgrade && dnf -y install git-remote-hg hg && yum clean all

VOLUME /git
WORKDIR /git

ENTRYPOINT ["git"]
CMD ["--help"]]
