FROM ubuntu:18.04

RUN apt-get update && \
    apt-get -y install default-jdk    

WORKDIR /work

ADD ./data ./data
ADD ./binaries/* ./

RUN bash -c "/work/exist-distribution-5.1.1/bin/startup.sh &" && \
    # Increase if problem building (server may not start eariler !!!)
    sleep 60 && \ 
    /work/exist-distribution-5.1.1/bin/client.sh -s -m /db/OPB -p ./data/* && \
    /work/exist-distribution-5.1.1/bin/client.sh -s -m /db/OPB -c /db/OPB -p ./data/cene.xml && \
    /work/exist-distribution-5.1.1/bin/client.sh -s -m /db/OPB -c /db/OPB -p ./data/katalog.xml && \
    /work/exist-distribution-5.1.1/bin/client.sh -s -m /db/OPB -c /db/OPB -p ./data/narocilo.xml && \
    /work/exist-distribution-5.1.1/bin/client.sh -s -m /db/OPB/Freebase -c /db/OPB -p ./data/Freebase/martial_art_category.xml && \
    /work/exist-distribution-5.1.1/bin/client.sh -s -m /db/OPB/Freebase -c /db/OPB -p ./data/Freebase/martial_art.xml && \
    /work/exist-distribution-5.1.1/bin/client.sh -s -m /db/OPB/Freebase -c /db/OPB -p ./data/Freebase/martial_artist.xml && \
    /work/exist-distribution-5.1.1/bin/client.sh -s -m /db/OPB/Freebase -c /db/OPB -p ./data/Freebase/martial_arts_organization.xml && \
    /work/exist-distribution-5.1.1/bin/shutdown.sh

CMD [ "/work/exist-distribution-5.1.1/bin/startup.sh" ]