# test_roles_infra

## Как запустить.
- Сконфигурировать remote state.
- Заполнить переменные terraform.tfvars.
- Выполнить terraform apply в директории terraform/stage
- Настроить gce dynamic inventory в директории ansible/environments/stage/gce.ini. Заполнить переменные gce_service_account_email_address, gce_service_account_pem_file_path, gce_project_id.
- Выполнить ansible-playbook playbooks/site.yml. Это настроит nginx и apache. проверить работу, пройдя по ссылкам на balancer'ы.
- Изменить переменную apache_site_release_number в group_vars/tag_reddit-app.
- Выполнить ansible-playbook playbooks/update.yml. Наблюдать за выполнением rolling-update.
