sentry_pull:
    module.run:
        - name: dockercompose.pull
        - path: /srv/compose/sentry

sentry:
    environ.setenv:
        - value:
              DB_PASSWORD: "{{ pillar["env"]["SENTRY_DB_PASSWORD"] }}"
              SECRET_KEY: "{{ pillar["env"]["SENTRY_SECRET_KEY"] }}"

    module.run:
        - name: dockercompose.up
        - path: /srv/compose/sentry
