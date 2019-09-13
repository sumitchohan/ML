FROM jupyter/minimal-notebook

LABEL maintainer="Jupyter Project <jupyter@googlegroups.com>"

USER root

# Install all OS dependencies for fully functional notebook server
#RUN apt-get update && apt-get install -yq --no-install-recommends \
#    build-essential \
#    emacs \
#    git \
#    inkscape \
#    jed \
#    libsm6 \
#    libxext-dev \
#    libxrender1 \
#    lmodern \
#   netcat \
#    pandoc \
#    python-dev \
#    texlive-fonts-extra \
#    texlive-fonts-recommended \
#    texlive-generic-recommended \
#    texlive-latex-base \
#    texlive-latex-extra \
#    texlive-xetex \
#    tzdata \
#    unzip \
#    nano \
 #   && rm -rf /var/lib/apt/lists/*

# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID