FROM adoptopenjdk/openjdk8:ubuntu

RUN apt update && apt install -y git maven python3 wget

WORKDIR /home/arepair/

RUN git clone https://github.com/kaiyuanw/ARepair .
RUN git reset --hard dacd87d1fa3de4017f6c415f72ab6466211e6150
RUN wget "https://search.maven.org/remotecontent?filepath=org/slf4j/slf4j-nop/1.7.28/slf4j-nop-1.7.28.jar" -O "slf4j-nop-1.7.28.jar"

RUN ./arepair.sh --build

COPY . .


CMD /bin/bash
