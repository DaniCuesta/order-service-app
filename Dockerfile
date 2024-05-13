# Utiliza una imagen base de OpenJDK
FROM docker.io/openjdk:23-jdk-slim

# Opcional: Define el mantenedor de la imagen
LABEL maintainer="tu_nombre@ejemplo.com"

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR compilado al directorio de trabajo
COPY target/order-service-0.0.1-SNAPSHOT.jar order-service-0.0.1-SNAPSHOT.jar

# Define el comando que siempre se ejecuta (ENTRYPOINT)
ENTRYPOINT ["java", "-jar", "order-service-0.0.1-SNAPSHOT.jar"]
