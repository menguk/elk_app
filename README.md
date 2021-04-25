## Описание стека
* Анализатор кода на базе [PMD](https://pmd.github.io/)
* [FTP-сервер](https://github.com/stilliard/docker-pure-ftpd), с которого загружаются правила для проверки 
* [ELK-стек](https://github.com/deviantony/docker-elk) для сбора и хранения логов

## Предварительная подготовка
* Адрес проекта для анализа кода передается через аргумент  `URL_REPO` в файле `docker-compose.yml`
* Правила для проверки кода находятся в `rules/myrules.xml`

## Запуск
* Запуск осуществляется командой `docker-compose -p ftp_app up -d`
* Результат проверки появлется после запуска в папке проекта в файле `result.txt`
* Логи доступны к просмотру через UI Kibana по адресу http://<IP_сервера>:5601
  * Логин для UI Kibana: elastic
  * Пароль: changeme
