# README

# README.rb

# Proyecto: Good Movies con Docker

## Requisitos previos Docker o local

- Docker y Docker Compose instalados en tu sistema.
- Ruby y Rails (opcional si usas Docker para todo).
  - Ruby: 3.0.2
  - PostgreSQL: 14.9
## Instalación

```sh
# Clona el repositorio
$ git clone https://github.com/chankas/good_movie.git
$ cd good_movie
```

## Variables de entorno .env
  crea un archivo con el nombre .env en la raiz del proyecto con las siguientes variables
  ```sh
  POSTGRES_HOST=localhost
  POSTGRES_DB=db_name
  POSTGRES_USER=db_user
  POSTGRES_PASSWORD=db_password
  POSTGRES_PORT=5432
  RAILS_ENV=development
  ```

## Configuración con Docker
  

```sh
# Modificar archivo .env 
POSTGRES_HOST=db
``` 

```sh
# Construir los contenedores
$ docker compose -f docker-conpose-dev.yml build

# Iniciar los servicios
$ docker-compose -f docker-conpose-dev.yml up -d

# Crear la base de datos
$ docker-compose -f docker-conpose-dev.yml run --rm web rails db:create db:migrate db:fixtures:load
```

## Configuración local


```sh
  # Instala las dependencias con bundle
  $ bundle install

  # Crea la base de datos
  $ rake db:create

  # Ejecuta las migraciones
  $ rake db:migrate

  # Carga los datos de prueba
  $ rake db:fixtures:load

  # Ejecuta el servidor
  $ bin/dev
```
## Uso

```sh
# Acceder a la aplicación en el navegador
http://localhost:3000

# Ver logs
$ docker compose -f docker-conpose-dev.yml logs -f

# Acceder a la consola de Rails
$ docker compose -f docker-conpose-dev.yml run --rm web rails console

# Detener los contenedores
$ docker compose -f docker-conpose-dev.yml down
```

## Pruebas

```sh
# Ejecutar pruebas 
$ docker compose -f docker-conpose-dev.yml run --rm web rails test db:environment:set RAILS_ENV=test

```

## Despliegue

1. Configurar el archivo `.env` con las variables de entorno.
2. Construir y enviar la imagen a un registro de contenedores.
3. Desplegar en el entorno deseado.

## Contribución

1. Haz un fork del repositorio.
2. Crea una nueva rama (`feature/nueva-funcionalidad`).
3. Realiza tus cambios y haz commit.
4. Envía un pull request.

## Licencia

Este proyecto está bajo la licencia MIT.
