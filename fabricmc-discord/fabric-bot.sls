fabric_bot_pull:
    module.run:
        - name: dockercompose.pull
        - path: /srv/compose/fabric-bot

fabric_bot:
    environ.setenv:
        - value:
            BOT_TOKEN: "{{ pillar["env"]["FABRIC_BOT_TOKEN"] }}"
            DB_PASSWORD: "{{ pillar["env"]["FABRIC_BOT_DB_PASSWORD"] }}"
            GITHUB_ORG: "{{ pillar["env"]["GITHUB_ORG"] }}"
            GITHUB_TOKEN: "{{ pillar["env"]["GITHUB_TOKEN"] }}"
    
    module.run:
        - name: dockercompose.up
        - path: /srv/compose/fabric-bot