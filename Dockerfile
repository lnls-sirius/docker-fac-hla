FROM lnlsfac/docker-qt

WORKDIR /repos
RUN git clone https://github.com/lnls-sirius/dev-packages.git && \
	git clone https://github.com/lnls-sirius/pydm.git && \
	git clone https://github.com/lnls-sirius/hla.git

WORKDIR /repos/dev-packages/siriuspy
RUN python3.6 setup.py develop

WORKDIR /repos/pydm
RUN python3.6 setup.py develop

WORKDIR /repos/hla/pyqt-apps
RUN make develop

