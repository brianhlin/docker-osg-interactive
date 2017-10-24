FROM centos:6
MAINTAINER Brian Lin <blin@cs.wisc.edu>
ARG OSG

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm && \
    yum install -y yum-priorities && \
    rpm -Uvh http://repo.grid.iu.edu/osg/$OSG/osg-$OSG-el6-release-latest.rpm && \
    yum makecache

WORKDIR /tmp

# To reconnect to this container, run the following:
# docker start <CONTAINER ID>
# docker exec -it <CONTAINER ID> /bin/bash
CMD /bin/bash
