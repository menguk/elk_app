FROM openjdk:8-jdk-alpine
 
ENV HOME /home/app
 
# ENV URL_REPO https://github.com/otale/tale
 
RUN apk add --no-cache curl bash git nfs-utils
 
RUN mkdir -p $HOME
 
WORKDIR $HOME
 
ADD . $HOME
 
RUN mkdir repo
 
ARG URL_REPO
RUN git clone $URL_REPO repo
 
#CMD ["/home/app/bin/run.sh", "pmd", "-d", "repo", "-R","myrule.xml", "-f", "text"]
CMD ["sh", "-c", "/home/app/bin/run.sh pmd -d repo -R $RULE_FILE -f text"]

