FROM rocker/verse:4.1.0

LABEL org.opencontainers.image.licenses="GPL-2.0-or-later" \
      org.opencontainers.image.source="https://github.com/rocker-org/rocker-versioned2" \
      org.opencontainers.image.vendor="Rocker Project" \
      org.opencontainers.image.authors="Carl Boettiger <cboettig@ropensci.org>"

# Change Locale
ENV TZ=Asia/Tokyo
ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8

# Install JP Fonts and others
RUN apt-get update && apt-get install -y \
    language-pack-ja-base \
    language-pack-ja \
    locales \
    tzdata \
    tcl8.6-dev tk8.6-dev \
    libsecret-1-dev \
  && sed -i '$d' /etc/locale.gen \
  && echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen \
  && locale-gen ja_JP.UTF-8 \
  && /usr/sbin/update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja" \
  && /bin/bash -c "source /etc/default/locale" \
  && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


COPY install_packages.sh  /rocker_scripts/.
RUN  /rocker_scripts/install_packages.sh


