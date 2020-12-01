sentry_pull:
    module.run:
        - name: dockercompose.pull
        - path: /home/sentry

sentry:
    module.run:
        - name: dockercompose.up
        - path: /home/sentry
