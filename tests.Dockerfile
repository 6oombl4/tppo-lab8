FROM python:3.12-slim
ARG DEBIAN_FRONTEND="noninteractive"
ENV PYTHONFAULTHANDLER=1 \
  PYTHONUNBUFFERED=1 \
  PYTHONHASHSEED=random \
  PIP_NO_CACHE_DIR=1 \
  PIP_DISABLE_PIP_VERSION_CHECK=on \
  PIP_DEFAULT_TIMEOUT=100 \
  LC_ALL=C.UTF-8 \
  LANG=C.UTF-8


LABEL org.opencontainers.image.authors="Daniil Virzhemkovsky <danikv0305@gmail.com>"

RUN pip install --no-cache-dir --upgrade pip wheel setuptools

WORKDIR /app

COPY requirements-tests.txt .
RUN pip install --no-cache-dir -r requirements-tests.txt

COPY . /app

CMD ["/app/tests.sh"]
