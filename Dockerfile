FROM centos:7
MAINTAINER Shuzhe WANG

RUN yum -y install epel-release && yum -y update && yum -y install gcc gcc-c++ make

ENV FPOCKET_ROOT /fpocket2
ENV PATH $PATH:$FPOCKET_ROOT/bin/

COPY fpocket2 /fpocket2/

#what does this really do?
WORKDIR $FPOCKET_ROOT

RUN cd $FPOCKET_ROOT
RUN make && make test


