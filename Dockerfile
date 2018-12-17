FROM lnls/fac-qt

RUN apt-get update && apt-get install -y pyqt5-dev-tools && \
    git clone https://github.com/lnls-fac/mathphys.git && \
    cd /mathphys && python3.6 setup.py install && \
    cd / && git clone https://github.com/lnls-sirius/dev-packages.git && \
    cd /dev-packages/siriuspy/ && \
    pip3.6 install -r requirements.txt && \
    python3.6 setup.py install && \
    cd / && git clone https://github.com/lnls-sirius/pydm.git && \
    cd /pydm && \
    python3.6 setup.py install && \
    cd / && git clone https://github.com/lnls-sirius/hla.git && \
    cd /hla/pyqt-apps && \
    make install

ENTRYPOINT bash
