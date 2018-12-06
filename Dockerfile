FROM continuumio/miniconda3:4.5.11

RUN /opt/conda/bin/conda install jupyter -y --quiet

RUN /opt/conda/bin/conda install -c conda-forge grequests
RUN /opt/conda/bin/conda install -c conda-forge pandas
RUN /opt/conda/bin/conda install -c conda-forge seaborn
RUN /opt/conda/bin/conda install -c conda-forge beautifulsoup4
RUN /opt/conda/bin/conda install -c brown-data-science twarc

RUN apt-get update -y
RUN apt-get install p7zip-full unzip -y

EXPOSE 8888
VOLUME [ "/notebook" ]

ENTRYPOINT [ "/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root" ]
