FROM openjdk:14.0.1
# copy source codes
WORKDIR /app
ENV PATH=${PATH}:/app
COPY . .
# build and run
RUN ./gradlew build
CMD java -jar build/libs/GradleDocker-1.0-SNAPSHOT.jar