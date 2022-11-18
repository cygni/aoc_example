FROM r-base
COPY . /usr/local/src/myscripts
WORKDIR /usr/local/src/myscripts
RUN Rscript install.R
CMD ["Rscript", "aoc.R"]