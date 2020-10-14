service_docker:
    service.running:
        - name: "docker"
        - enable: True

        - require:
            - file: service_docker_compose

service_docker_compose:
    file.recurse:
        - name: /srv/compose
        - source: salt://compose/
