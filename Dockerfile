FROM openjdk:17-jdk-slim AS builder

# Step 2: Gradle 파일을 복사
WORKDIR /app
COPY . /app

# Step 3: Gradle wrapper에 실행 권한을 부여
RUN chmod +x ./gradlew

# Step 4: Gradle 빌드
RUN ./gradlew build --no-daemon

# Step 5: 실행할 JAR 파일을 기본 이미지로 복사
FROM openjdk:17-jdk-slim

# Step 6: 빌드된 JAR 파일을 복사
COPY --from=builder /app/build/libs/*.jar /app/app.jar

# Step 7: 실행 명령어
ENTRYPOINT ["java", "-jar", "/app/app.jar"]