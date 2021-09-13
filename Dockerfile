FROM openjdk:16-alpine
WORKDIR /home/app
COPY layers/libs /home/app/libs
COPY layers/resources /home/app/resources
COPY layers/application.jar /home/app/application.jar
RUN test -e /usr/sbin/groupadd && groupadd -r app && adduser -g app app && chown -R app:app /home/app || true
RUN test -e /usr/sbin/addgroup && addgroup app && adduser -G app app -D && chown -R app:app /home/app || true
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/home/app/application.jar"]
