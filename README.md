# OSX Installation

Install VirtualBox (https://www.virtualbox.org/)

Install boot2docker (https://github.com/boot2docker/boot2docker)

Once in boot2docker ssh, build image: `docker build -t lthurston/centos-solr github.com/lthurston/centos-solr.git`

Run the continer, mapping port 8983 to the container: `docker run -p 8983:8983 -t lthurston/centos-solr`

In VirtualBox, edit the setting for boot2docker, in Network add a Port Forwarding rule that looks like this: solr, TCP, 127.0.0.1, 8983, , 8983

Expect Solr admin interface at http://127.0.0.1:8983/solr/#/ in your browser

# Todo:

TYPO3 tx_solr configuration for solr -- working on it, take it eesy
