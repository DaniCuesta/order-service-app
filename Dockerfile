# Utiliza una imagen base de OpenJDK
FROM registry.access.redhat.com/ubi9/openjdk-17:1.18-4

# Opcional: Define el mantenedor de la imagen
LABEL maintainer="tu_nombre@ejemplo.com"

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR compilado al directorio de trabajo
COPY target/order-service-0.0.1-SNAPSHOT.jar order-service-0.0.1-SNAPSHOT.jar

# Define el comando que siempre se ejecuta (ENTRYPOINT)
ENTRYPOINT ["java", "-jar", "order-service-0.0.1-SNAPSHOT.jar"]
