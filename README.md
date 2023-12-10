# ansible_task

## Task 1
```shell
ansible-playbook -i inventory.yaml ansible.yaml
ls system_indicators.csv
```

## Task 2

Start docker:
```shell
docker build -t example_host_image -f host.dockerfile .
docker run -d -i -p 10022:22 --name host_example -v /var/run/docker.sock:/var/run/docker.sock example_host_image
```

Run service
```shell
ansible-playbook -i inventory.ayml ansible.yaml
```

Check with ```curl -v localhost:8080/get_link```

Swagger for more interesting examples: https://github.com/amanakin/shortener/blob/master/api/http/shortener.yaml