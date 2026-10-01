# role-hadoop
Роль Ansible для развертывания кластера Hadoop

Инструкция:
1. Готовим свой инвентарь
2. Создаём пользователя как в файле script.sh
3. Устанавливаем кластер Hadoop
4. Проверяем, что он работает - следующими командами:
'''
jps
ss -tlnp | grep 9000
hdfs dfs -mkdir -p /user/hadoop
hdfs dfs -ls /user
'''