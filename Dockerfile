FROM continuumio/miniconda3:4.5.11

# misc OS tools
RUN apt-get update -y
RUN apt-get install p7zip-full unzip -y

# create python 3.x kernel
RUN conda create -n python3 python=3.6 ipykernel -y

# install jupyter
RUN conda install jupyter -y --quiet

# install jupyter notebook dependencies
RUN conda install -c conda-forge grequests pandas seaborn beautifulsoup4 urllib3 -y

EXPOSE 8888
VOLUME [ "/notebook" ]

ENTRYPOINT [ "jupyter", "notebook", "--notebook-dir=/notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root" ]
