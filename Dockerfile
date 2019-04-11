FROM r-base:latest

RUN R -e "install.packages('plumber')"
RUN R -e "install.packages('recommenderlab')"

COPY . /app

EXPOSE 8000

CMD ["/bin/bash"]

