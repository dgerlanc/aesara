# syntax=docker/dockerfile:1.3

FROM continuumio/miniconda3:4.10.3

ARG PYTHON_VERSION
ENV PYTHON_VERSION=${PYTHON_VERSION:-3.7.10}

RUN conda install -y -n base -c conda-forge \
    python=$PYTHON_VERSION \
    pip \
    numpy \
    scipy \
    cython \
    cffi \
    gcc_linux-64 \
    gxx_linux-64 \
    numba \
    numba-scipy \
    filelock \
    mkl \
    mkl-service \
    'libblas=*=*mkl' \
    jax \
    jaxlib \
    libgpuarray \
    pygpu \
    ipython \
    pytest && \
    conda clean -tipsy

WORKDIR /app
COPY . ./aesara
RUN python -m pip install --no-deps ./aesara

ENTRYPOINT ["./aesara/docker/entrypoint.sh"]
CMD ["python"]
