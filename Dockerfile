FROM adoptopenjdk/openjdk8:ubuntu

#RUN apk update && apk add --no-cache git git-lfs freetype
RUN apt update && apt install -y wget

COPY . /home/atr/build
WORKDIR /home/atr/build
RUN rm -rf gradle
RUN ./gradlew build

WORKDIR /home/atr
RUN wget "https://search.maven.org/remotecontent?filepath=org/slf4j/slf4j-nop/1.7.28/slf4j-nop-1.7.28.jar" -O "slf4j-nop-1.7.28.jar"
RUN mv build/org.alloytools.alloy.dist/target/org.alloytools.alloy.dist.jar atr.jar
RUN mv build/atr.sh atr.sh
RUN mv build/beafix_benchmarks/A4F-1B-ATR A4F-1B-ATR
RUN mv build/alloy4fun_models alloy4fun_models

RUN printf "#!/bin/sh\nfor f in \$(find A4F-1B-ATR -type f | sort);\ndo echo \$f; ./atr.sh atr.jar --depth 3 --timeout 60 --show-cexs --stats --file \$f >> results.json;\n done " >> run-all-a4f.sh; chmod +x run-all-a4f.sh

RUN rm -rf build

CMD /bin/bash
