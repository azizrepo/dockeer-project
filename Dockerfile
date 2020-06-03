FROM java:8
VOLUME /tmp
#COPY alzapp4-0.0.1-SNAPSHOT.jar alzapp4-0.0.1-SNAPSHOT.jar
#COPY  http://localhost:8046/artifactory/libs-snapshot-local/com/cts/alzapp4/0.0.1-SNAPSHOT/alzapp4-0.0.1-20200603.071111-1.jar alzapp4-0.0.1-SNAPSHOT.jar
COPY http://localhost:9090/jenkins/job/test/ws/target/alzapp4-0.0.1-SNAPSHOT.jar alzapp4-0.0.1-SNAPSHOT.jar 
EXPOSE 9091
ENTRYPOINT ["java","-jar","alzapp4-0.0.1-SNAPSHOT.jar"]
