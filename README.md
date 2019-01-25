# code-checker-sandbox
Для прогона проверок на кодстайл, тестов и покрытия кода.

Пакеты зависимостей нужной версии необходимо установить самостоятельно

## Codesniffer

```bash
docker run --rm -v $PWD:/var/www/html temirkhan/code-checker vendor/bin/phpcs
```

## Phpunit

```bash
docker run --rm -v $PWD:/var/www/html temirkhan/code-checker vendor/bin/phpunit
```
