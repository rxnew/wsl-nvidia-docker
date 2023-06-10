ARG base
ARG user
FROM ${base}
USER root
RUN rm -rf /usr/lib/$(uname -m)-linux-gnu/libnvidia-ml.so.1 /usr/lib/$(uname -m)-linux-gnu/libcuda.so.1
USER ${user}
