FROM leandatascience/jupyterlab-ds:latest
RUN pip install snap-stanford
RUN pip install networkx==2.3
RUN pip install matplotlib
RUN pip install numpy
RUN pip install graphviz
ENV MAIN_PATH=/usr/local/bin/influencemaximisation
ENV LIBS_PATH=${MAIN_PATH}/libs
ENV CONFIG_PATH=${MAIN_PATH}/config
ENV NOTEBOOK_PATH=${MAIN_PATH}/notebooks

EXPOSE 8888

CMD cd ${MAIN_PATH} && sh config/run_jupyter.sh
