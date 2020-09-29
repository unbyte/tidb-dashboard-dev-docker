FROM centos:7
ARG locale=non-cn
MAINTAINER unbyte<i@shangyes.net>
COPY . /scripts
WORKDIR /workspace
RUN chmod +x /scripts/*.sh && /scripts/get-tools.sh && /scripts/init-env.sh $locale
EXPOSE 12333 3001
ENTRYPOINT ["/bin/bash"]
CMD ["/scripts/entrypoint.sh"]