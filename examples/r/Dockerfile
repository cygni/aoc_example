FROM r-base:4.1.1
COPY . /usr/local/src/myscripts
WORKDIR /usr/local/src/myscripts
RUN Rscript install.R
CMD ["Rscript", "aoc.R"]