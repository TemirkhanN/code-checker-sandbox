# code-checker-sandbox
Для прогона проверок на кодстайл, тестов и покрытия кода.


## Codesniffer

```bash
docker run -v $PWD:/var/www/html serhanters/code-checker-sandbox echo "" && phpcs
```

## Phpunit

```bash
docker run -v $PWD:/var/www/html serhanters/code-checker-sandbox echo "" && phpunit
```
