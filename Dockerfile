FROM centos:6.4
MAINTAINER keisatou "https://github.com/keisatou"

RUN yum -y update
RUN yum -y install java-1.7.0-openjdk

RUN wget http://ftp.riken.jp/net/apache/lucene/solr/4.6.0/solr-4.6.0.tgz -O /tmp/pkg.tar.gz
RUN (cd /tmp && tar zxf pkg.tar.gz && mv solr-* /opt/solr)
RUN rm -rf /tmp/*

ADD run.sh /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

EXPOSE 8983
CMD [""]
ENTRYPOINT ["/usr/local/bin/run"]
