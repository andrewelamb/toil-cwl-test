FROM r-base

COPY bin/simple.R /usr/local/bin/
RUN chmod a+x /usr/local/bin/simple.R
