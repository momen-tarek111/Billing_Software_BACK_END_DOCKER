FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . .

RUN mvnw clean package -DskipTests

EXPOSE 8080

CMD ["sh", "-c", "java -Xms128m -Xmx256m -jar target/*.jar --server.port=$PORT"]