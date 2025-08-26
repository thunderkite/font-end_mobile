FROM gradle:8.11.1-jdk17 AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN cd backend && gradle installDist --no-daemon

FROM openjdk:17-slim
EXPOSE 9876
RUN mkdir /app
COPY --from=build /home/gradle/src/backend/build/install/backend /app
ENTRYPOINT ["/app/bin/backend"]