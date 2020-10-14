metrics_pull:
  module.run:
    - name: dockercompose.pull
    - path: /srv/compose/metrics

metrics:
  environ.setenv:
    - value:
        BOT_TOKEN: "{{ pillar["env"]["METRICS_BOT_TOKEN"] }}"
        POSTGRES_PASSWORD: "{{ pillar["env"]["METRICS_DB_PASSWORD"] }}"

  module.run:
    - name: dockercompose.up
    - path: /srv/compose/metrics
