FROM adoptopenjdk/openjdk8:ubuntu

RUN apt update && apt install -y git maven python3

WORKDIR /home/arepair/

RUN git clone https://github.com/kaiyuanw/ARepair .
RUN git reset --hard dacd87d1fa3de4017f6c415f72ab6466211e6150
RUN ./arepair.sh --build

COPY . .

CMD /bin/bash
