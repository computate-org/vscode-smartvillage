FROM quay.io/opendatahub-contrib/workbench-images:vscode-datascience-c9s-py311_2023c_latest

MAINTAINER Christopher Tate <computate@computate.org>

USER root

# Install prerequisite packages
RUN yum install -y java-11-openjdk-devel maven
RUN pip3 install setuptools_rust wheel
RUN pip3 install --upgrade pip
RUN pip3 install ansible openshift jmespath paho-mqtt
RUN ansible-galaxy collection install kubernetes.core ansible.utils kubernetes.core -U
