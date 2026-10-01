# Hadoop Cluster Role (Arena Data)

## Требования
- 3 ВМ: 1 master + 2 workers
- Суммарно ОЗУ ≤ 22 ГБ (распределение: master 8 ГБ, workers по 7 ГБ)
- ОС: Debian/Ubuntu или RHEL/CentOS
- Ansible ≥ 2.9, доступ по SSH (root или пользователь с sudo)

## Переменные
Основные параметры в `defaults/main.yml`:
- `hadoop_version`: версия Hadoop (по умолчанию 3.3.6)
- `java_home`, `java_version`: путь и версия Java (JDK 11)
- Параметры памяти (`namenode_heap`, `resourcemanager_heap` и т.д.)

## Структура
- `tasks/`: install → configure → start
- `templates/`: все конфиги и systemd-юниты
- `inventory.ini`: пример инвентаря
- `site.yml`: главный playbook

## Быстрый старт
1. Создать директорию и положить туда файлы роли.
2. Отредактировать `inventory.ini` (подставить IP).
3. Если нужен SSH без пароля — заранее настроить ключи или задать `ssh_password` в инвентаре/vault.
4. Запустить:
   ```bash
   ansible-playbook -i inventory.ini site.yml
