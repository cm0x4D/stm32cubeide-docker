FROM ubuntu:22.04

RUN apt-get update && apt-get install -yq git srecord python3
COPY st-stm32cubeide_1.9.0_12015_20220302_0855_amd64.deb_bundle.sh /tmp/
RUN cd /tmp && chmod +x /tmp/st-stm32cubeide_1.9.0_12015_20220302_0855_amd64.deb_bundle.sh && /tmp/st-stm32cubeide_1.9.0_12015_20220302_0855_amd64.deb_bundle.sh --tar xf && dpkg --force-all -i st-stm32cubeide-1.9.0-12015-20220302-0855_amd64.deb && rm /tmp/*.deb /tmp/*.sh /tmp/*.txt
