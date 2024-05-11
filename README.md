
# Demo App Labo

## Descripción

`demo-app-labo` es una aplicación simple construida con Spring Boot. Sirve como una introducción a las aplicaciones web con Spring Boot y Docker. Esta aplicación responde a solicitudes HTTP en el puerto 8080 con un mensaje de bienvenida.

## Requisitos

Para construir y ejecutar esta aplicación necesitas:

- JDK 17
- Maven 3.6+
- Docker (opcional, para contenerización)

## Estructura del Proyecto

Descripción de la estructura principal del proyecto:

```
demo-app-labo/
│
├── src/
│   ├── main/
│      ├── java/
│      │   └── com/
│      │       └── labo/
│      │           └── demo-app/
│      │               ├── DemoAppLaboApplication.java
│      │               └── controller/
│      │                   └── HelloController.java
│      ├── resources/
│          └── application.yaml
│
├── Dockerfile
├── pom.xml
└── README.md
```

## Clases Principales

### `DemoAppLaboApplication.java`

Esta es la clase principal que inicia la aplicación Spring Boot. Utiliza la anotación `@SpringBootApplication`, que es una conveniencia que agrega automáticamente configuración basada en las dependencias presentes en el proyecto. Esta clase contiene el método `main`, que es el punto de entrada de la aplicación.

### `controller/HelloController.java`

Esta clase define un controlador simple que maneja las solicitudes HTTP. Utiliza la anotación `@RestController`, indicando que los datos devueltos por cada método se escriben directamente en el cuerpo de la respuesta en lugar de enviarlos a una vista. El método `index` mapeado a la ruta raíz ("/") devuelve un mensaje de bienvenida.

## Generación de Logs de Prueba

Para generar logs de prueba en la aplicación, se utiliza el framework de logging integrado con Spring Boot. Se puede configurar el nivel de logging en el archivo `application.yaml` y agregar instrucciones de log en el código utilizando SLF4J.
Hay solo un log de tipo info, que se muestra cuando haces una llamada a la aplicación.


## Configuración

### Construir la Aplicación

Para compilar la aplicación y crear un paquete JAR ejecutable, utiliza el siguiente comando Maven en el directorio raíz del proyecto:

```shell
mvn clean package
```

### Ejecutar la Aplicación

Para iniciar la aplicación, ejecuta:

```shell
java -jar target/demo-app-labo-0.0.1-SNAPSHOT.jar
```

O puedes usar Maven para ejecutar la aplicación sin empaquetarla:

```shell
mvn spring-boot:run
```

La aplicación estará accesible en `http://localhost:8080`.

### Dockerizar la Aplicación

Para contenerizar y ejecutar la aplicación usando Docker, sigue estos pasos:

1. Construye la imagen Docker con el siguiente comando:

   ```shell
   docker build -t demo-app-labo .
   ```

2. Una vez que la imagen se haya construido, puedes iniciar tu aplicación contenerizada con:

   ```shell
   docker run -p 8080:8080 demo-app-labo
   ```

La aplicación ahora estará accesible en `http://localhost:8080` a través de Docker.

