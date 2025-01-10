# pymongo-api

## Как запустить

1. Запуск mongodb и приложения

```shell

docker compose up -d

```

2. Инициализация

```shell
./scripts/mongo-init.sh
```


3. Заполняем mongodb данными

```shell
./scripts/mongo-fill.sh
```


3. тестируем mongodb

```shell
./scripts/mongo-test.sh
```

## Как проверить

### Если вы запускаете проект на локальной машине

Откройте в браузере http://localhost:8080

### Если вы запускаете проект на предоставленной виртуальной машине

Узнать белый ip виртуальной машины

```shell
curl --silent http://ifconfig.me
```

Откройте в браузере http://<ip виртуальной машины>:8080

## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://<ip виртуальной машины>:8080/docs