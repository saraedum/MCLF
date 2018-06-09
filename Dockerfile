# A Dockerfile for [binder](https://mybinder.readthedocs.io/en/latest/using.html#Dockerfile)
FROM sagemath/sagemath@sha256:e933509b105f36b9b7de892af847ade7753e058c5d9e0c0f280f591b85ad996d
COPY --chown=sage:sage . .
RUN sage -python setup.py install
