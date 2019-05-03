# vim: set sw=4 et :
FROM centos:7
ARG BEANCOUNT_IMPORT_VERSION=1.3.0

RUN yum -y install epel-release
RUN yum -y install python36 python36-pip

RUN yum -y install gcc python36-devel
RUN pip3 install beancount-import==$BEANCOUNT_IMPORT_VERSION

ENV BEANCOUNT_IMPORT_RUNNER "/data/run.py"
ENV BEANCOUNT_IMPORT_OPTIONS ""
EXPOSE 8101
CMD python3 "$BEANCOUNT_IMPORT_RUNNER" -a 0.0.0.0 -p 8101 $BEANCOUNT_IMPORT_OPTIONS
