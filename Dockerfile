FROM ubuntu:20.04

RUN apt-get update && apt-get install -yq git
COPY st-stm32cubeide_1.7.0_10852_20210715_0634_amd64.deb_bundle.sh /tmp/
RUN cd /tmp && chmod +x /tmp/st-stm32cubeide_1.7.0_10852_20210715_0634_amd64.deb_bundle.sh && /tmp/st-stm32cubeide_1.7.0_10852_20210715_0634_amd64.deb_bundle.sh --tar xf && dpkg --force-all -i st-stm32cubeide-1.7.0-10852-20210715-0634_amd64.deb && rm /tmp/*.deb /tmp/*.sh /tmp/*.txt
