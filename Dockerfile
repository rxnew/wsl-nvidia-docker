ARG base
FROM ${base}
ARG user
USER root
RUN rm -rf /usr/lib/$(uname -m)-linux-gnu/libnvidia-ml.so.1 /usr/lib/$(uname -m)-linux-gnu/libcuda.so.1 /usr/lib/$(uname -m)-linux-gnu/libcudadebugger.so.1
USER ${user}
