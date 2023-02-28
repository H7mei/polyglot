# Apps for the Complete Intro to SQL

^run as root

CREATE DATABASE

```bash
docker run -e POSTGRES_PASSWORD=lol --name=pg --rm -d -p 5432:5432 postgres:14
```

RUN DATABASE

```bash
docker exec -u postgres -it pg psql
```

RUN pgAdmin

```bash
docker compose up
```
