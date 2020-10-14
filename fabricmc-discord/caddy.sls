fabricmc_discord_caddy:
    service.running:
        - name: "caddy"
        - enable: True
        - reload: True

        - watch:
            - file: fabricmc_discord_caddy_config
            - file: fabricmc_discord_caddy_files
        
        - require:
            - file: fabricmc_discord_caddy_config
            - file: fabricmc_discord_caddy_files

fabricmc_discord_caddy_config:
    - file.managed:
        - name: /etc/caddy/Caddyfile
        - source: salt://common/etc/caddy/Caddyfile

fabricmc_discord_caddy_files:
    file.recurse:
        - name: /etc/caddy/caddy.d
        - source: salt://fabricmc-discord/etc/caddy/caddy.d/