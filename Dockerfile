FROM adoptopenjdk/openjdk8:ubuntu

RUN apt update && apt install -y wget

COPY . /home/atr/build
WORKDIR /home/atr/build
RUN rm -rf gradle; \
    ./gradlew build

WORKDIR /home/atr
RUN wget "https://search.maven.org/remotecontent?filepath=org/slf4j/slf4j-nop/1.7.28/slf4j-nop-1.7.28.jar" -O "slf4j-nop-1.7.28.jar"; \
    mv build/org.alloytools.alloy.dist/target/org.alloytools.alloy.dist.jar atr.jar; \
    mv build/atr.sh atr.sh; \
    mv build/beafix_benchmarks/A4F-1B-ATR A4F-1B-ATR; \
    mv build/alloy4fun_models alloy4fun_models

RUN (echo "#!/bin/sh"; \
    echo "for f in \$(find A4F-1B-ATR -type f | sort); do"; \
    echo "  echo \$f"; \
    echo "  ./atr.sh atr.jar --depth 3 --timeout 60 --show-cexs --stats --file \$f >> results.json"; \
    echo "done") >> run-all-beafix.sh; \
    chmod +x run-all-beafix.sh;

RUN (echo "#!/bin/sh"; \
    echo "for f in \$(find alloy4fun_models -type f | grep -v 'main\\.als' | grep '\\.als$' | sort); do"; \
    echo "  echo \$f"; \
    echo "  ./atr.sh atr.jar --depth 3 --timeout 60 --show-cexs --stats --file \$f >> results.json"; \
    echo "done") >> run-all-a4f.sh; \
    chmod +x run-all-a4f.sh;

RUN rm -rf build; find . | rm $(grep "\.json$")

CMD /bin/bash
